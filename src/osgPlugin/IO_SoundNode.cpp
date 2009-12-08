/* -*-c++-*- $Id: IO_SoundNode.cpp,v 1.1 2005/05/27 10:37:48 vr-anders Exp $ */
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

#include <osgAL/SoundNode>
#include <osgAL/SoundManager>

#include <osgDB/Registry>
#include <osgDB/Input>
#include <osgDB/Output>
#include <osgDB/FileUtils>

using namespace osgAL;
using namespace osg;
using namespace osgDB;

// forward declare functions to use later.
bool SoundNode_readLocalData(Object& obj, Input& fr);
bool SoundNode_writeLocalData(const Object& obj, Output& fw);

// register the read and write functions with the osgDB::Registry.
RegisterDotOsgWrapperProxy SoundNodeProxy
(
 new osgAL::SoundNode,
 "osgAL::SoundNode",
 "Object Node osgAL::SoundNode",
 &SoundNode_readLocalData,
 &SoundNode_writeLocalData
 );

bool SoundNode_readLocalData(osg::Object &obj, osgDB::Input &fr)
{

	SoundNode &sn = static_cast<SoundNode&>(obj);

	/************************************************************************
	* Using this code, apps like osgviewer could use this kind of nodes and work,
	* but they will exit with crash !
	************************************************************************/

	if(!SoundManager::instance()->initialized()) {
		osg::notify(osg::WARN) << "osgdb_osgAL::SoundNode_readLocalData(): WARNING!!! ";
		osg::notify(osg::WARN) << "The osgAL plugin is initializing the SoundManager. ";
		osg::notify(osg::WARN) << "So surely nobody will shutdown it, and I will exit with a crash!" << std::endl;
		osgAL::SoundManager::instance()->init(16);
		osgAL::SoundManager::instance()->getEnvironment()->setDistanceModel(openalpp::InverseDistance);
		osgAL::SoundManager::instance()->getEnvironment()->setDopplerFactor(1);
	}

	bool itAdvanced = false;

	SoundState *ss = dynamic_cast<SoundState*>(fr.readObject());
	if(ss != NULL) {
		sn.setSoundState(ss);
		itAdvanced = true;
	}

	OccludeCallback *oc = dynamic_cast<OccludeCallback*>(fr.readObject());
	if(oc != NULL) {
		sn.setOccludeCallback(oc);
		itAdvanced = true;
	}

	return itAdvanced;
}

bool SoundNode_writeLocalData(const Object& obj, Output& fw)
{
	const SoundNode &sn = static_cast<const SoundNode&>(obj);
	bool itAdvanced = false;

	if(sn.getSoundState() != NULL)  {
		fw.writeObject( *sn.getSoundState() );
		itAdvanced = true;
	}

	if(sn.getOccludeCallback() != NULL) {
		fw.writeObject( *sn.getOccludeCallback() );
		itAdvanced = true;
	}

	return itAdvanced;
}
