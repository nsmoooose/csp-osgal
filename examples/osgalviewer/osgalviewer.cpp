/* -*-c++-*- $Id: osgalviewer.cpp,v 1.2 2005/05/27 10:37:48 vr-anders Exp $ */
/**
 * OsgAL - OpenSceneGraph Audio Library
 * Copyright (C) 2004 VRlab, Umeå University
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA.
 */

#include <osgAL/SoundManager>
#include <osgAL/SoundRoot>

#include <osgDB/ReadFile>
#include <osgUtil/Optimizer>
#include <osgProducer/Viewer>
#include <osg/CoordinateSystemNode>

#define OSGAL_DEFAULT_MAX_SOUNDSOURCES_ALLOWED 16
#define OSGAL_DEFAULT_GAIN 1.0
#define OSGAL_DEFAULT_DOPPLER_FACTOR 1.0
#define OSGAL_DEFAULT_DISTANCE_MODEL openalpp::InverseDistance

class FindSoundRootNodesVisitor : public osg::NodeVisitor {

public :
	typedef enum {
		SEARCH,
		SEARCH_AND_DESTROY
	} TMode ;

	FindSoundRootNodesVisitor() : osg::NodeVisitor(TRAVERSE_ALL_CHILDREN)
	{ _found_count = 0; _mode = SEARCH; }

	virtual void apply(osg::Group &group ) {
		for (unsigned int i = 0; i<group.getNumChildren(); ) {
			if( dynamic_cast<osgAL::SoundRoot*>(group.getChild(i)) && _mode==SEARCH_AND_DESTROY ) {
				group.removeChild(i);
			} else {
				if (dynamic_cast<osgAL::SoundRoot*>(group.getChild(i)) && _mode==SEARCH)
					_found_count++;
				
				group.getChild(i)->accept(*this);
				i++;
			}
		}
	}
	unsigned getHits() { return _found_count; }
	void setMode(TMode t) { _mode = t; }

private :
	osgAL::SoundRoot *_found_node;
	unsigned _found_count;
	TMode _mode;
};


int main( int argc, char **argv )
{
    // use an ArgumentParser object to manage the program arguments.
    osg::ArgumentParser arguments(&argc,argv);
    
    // set up the usage document, in case we need to print out how to use this program.
    arguments.getApplicationUsage()->setApplicationName(arguments.getApplicationName());
    arguments.getApplicationUsage()->setDescription(arguments.getApplicationName()+" is the a modified version of standard OpenSceneGraph example which loads and visualises 3d models and sounds.");
    arguments.getApplicationUsage()->setCommandLineUsage(arguments.getApplicationName()+" [options] filename ...");
    arguments.getApplicationUsage()->addCommandLineOption("-h or --help","Display command line paramters");
    arguments.getApplicationUsage()->addCommandLineOption("--help-env","Display environmental variables available");
    arguments.getApplicationUsage()->addCommandLineOption("--help-keys","Display keyboard & mouse bindings available");
    arguments.getApplicationUsage()->addCommandLineOption("--help-all","Display all command line, env vars and keyboard & mouse bindigs.");
    arguments.getApplicationUsage()->addCommandLineOption("--maxsounds <n>","Sets the maximum number of sounds allowed.");
	arguments.getApplicationUsage()->addCommandLineOption("--gain <n>","Sets the global gain (volume)");
	arguments.getApplicationUsage()->addCommandLineOption("--dopplerfactor <n>","Sets the doppler factor");
	arguments.getApplicationUsage()->addCommandLineOption("--distancemodel <mode>", "NONE | INVERSE_DISTANCE |INVERSE_DISTANCE_CLAMPED");

    // construct the viewer.
    osgProducer::Viewer viewer(arguments);

    // set up the value with sensible default event handlers.
    viewer.setUpViewer(osgProducer::Viewer::STANDARD_SETTINGS);

    // get details on keyboard and mouse bindings used by the viewer.
    viewer.getUsage(*arguments.getApplicationUsage());

    // if user request help write it out to cout.
    bool helpAll = arguments.read("--help-all");
    unsigned int helpType = ((helpAll || arguments.read("-h") || arguments.read("--help"))? osg::ApplicationUsage::COMMAND_LINE_OPTION : 0 ) |
                            ((helpAll ||  arguments.read("--help-env"))? osg::ApplicationUsage::ENVIRONMENTAL_VARIABLE : 0 ) |
                            ((helpAll ||  arguments.read("--help-keys"))? osg::ApplicationUsage::KEYBOARD_MOUSE_BINDING : 0 );
    if (helpType)
    {
        arguments.getApplicationUsage()->write(std::cout, helpType);
        return 1;
    }

	// Parsing the sound-related options

	unsigned int maxSounds = OSGAL_DEFAULT_MAX_SOUNDSOURCES_ALLOWED;
	arguments.read("--maxsounds", maxSounds);

	float gain = OSGAL_DEFAULT_GAIN;
	arguments.read("--gain", gain);

	float dopplerFactor = OSGAL_DEFAULT_DOPPLER_FACTOR;
	arguments.read("--dopplerfactor", dopplerFactor);

	openalpp::DistanceModel distanceModel = OSGAL_DEFAULT_DISTANCE_MODEL;
	std::string s_model;
#undef None // Someone in Linux is defining it 8|
	if (arguments.read("--distancemodel", s_model)) {
		if (s_model == "NONE")
			distanceModel = openalpp::None;
		else if (s_model == "INVERSE_DISTANCE")
			distanceModel = openalpp::InverseDistance;
		else if (s_model == "INVERSE_DISTANCE_CLAMPED")
			distanceModel = openalpp::InverseDistanceClamped;	
		else
			std::cerr << "WARNING: I do not understand that -distancemodel parameter" << std::endl;
	}

    // report any errors if they have occured when parsing the program aguments.
    if (arguments.errors())
    {
        arguments.writeErrorMessages(std::cout);
        return 1;
    }
    
    if (arguments.argc()<=1)
    {
        arguments.getApplicationUsage()->write(std::cout,osg::ApplicationUsage::COMMAND_LINE_OPTION);
        return 1;
    }
	

	// here we init the SoundManager
	osgAL::SoundManager::instance()->init(maxSounds);
	osgAL::SoundManager::instance()->getEnvironment()->setGain(gain);
	osgAL::SoundManager::instance()->getEnvironment()->setDopplerFactor(dopplerFactor);
	osgAL::SoundManager::instance()->getEnvironment()->setDistanceModel(distanceModel);

    osg::Timer_t start_tick = osg::Timer::instance()->tick();

    // read the scene from the list of file specified commandline args.
    osg::ref_ptr<osg::Node> loadedModel = osgDB::readNodeFiles(arguments);

    // if no model has been successfully loaded report failure.
    if (!loadedModel) 
    {
        std::cout << arguments.getApplicationName() <<": No data loaded" << std::endl;
        return 1;
    }

    // any option left unread are converted into errors to write out later.
    arguments.reportRemainingOptionsAsUnrecognized();

    // report any errors if they have occured when parsing the program aguments.
    if (arguments.errors())
    {
        arguments.writeErrorMessages(std::cout);
    }

    osg::Timer_t end_tick = osg::Timer::instance()->tick();

    std::cout << "Time to load = "<<osg::Timer::instance()->delta_s(start_tick,end_tick)<<std::endl;

    // optimize the scene graph, remove rendundent nodes and state etc.
    osgUtil::Optimizer optimizer;
    optimizer.optimize(loadedModel.get());

	// *********** Sound Root Node
	// Used for update the listener position and direction
	
	// First, here we find out how many sound root nodes there are
	FindSoundRootNodesVisitor fsrnv;
	fsrnv.setMode(FindSoundRootNodesVisitor::SEARCH);
	loadedModel->accept(fsrnv);
	if (fsrnv.getHits() == 0) {
		// there is no osgAL::SoundRoot to update the listener, so we insert one
		osg::ref_ptr<osgAL::SoundRoot> soundRoot = new osgAL::SoundRoot();
		osg::ref_ptr<osg::Group> rootGroup = static_cast<osg::Group*>(loadedModel.get());
		rootGroup->addChild(soundRoot.get());
	} else if (fsrnv.getHits() == 1) {
		// there is one, so no problem
	} else if (fsrnv.getHits() > 1) {
		// there are more than one SoundRoots !!! This is no critical, but
		// no useful. So, we warn about it...
		std::cerr << "WARNING!: the loaded model(s) has more than one sound root." << std::endl;
		std::cerr << "          If you are using more than one model, maybe each one has its" << std::endl;
		std::cerr << "          own osgAL::SoundRoot. I left in the loaded scene graph just one." << std::endl;
		// destroy all the SoundRoot nodes...
		fsrnv.setMode(FindSoundRootNodesVisitor::SEARCH_AND_DESTROY);
		loadedModel->accept(fsrnv);
		// and add just one SoundRoot node
		osg::ref_ptr<osgAL::SoundRoot> soundRoot = new osgAL::SoundRoot();
		osg::ref_ptr<osg::Group> rootGroup = static_cast<osg::Group*>(loadedModel.get());
		rootGroup->addChild(soundRoot.get());
	}

    // pass the loaded scene graph to the viewer.
	viewer.setSceneData(loadedModel.get());
    
    // create the windows and run the threads.
    viewer.realize();

    while( !viewer.done() )
    {
        // wait for all cull and draw threads to complete.
        viewer.sync();

        // update the scene by traversing it with the the update visitor which will
        // call all node update callbacks and animations.
        viewer.update();
         
        // fire off the cull and draw traversals of the scene.
        viewer.frame();
    }
   
    // wait for all cull and draw threads to complete before exit.
    viewer.sync();

	// Very important to call before end of main!
	osgAL::SoundManager::instance()->shutdown();

	return 0;
}

