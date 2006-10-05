/* -*-c++-*- */
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
#define _USE_MATH_DEFINES 
#include <cmath>

#include <iostream>
#include <openalpp/Source>
#include <openalpp/Capture>

#define CRTDBG_MAP_ALLOC
#include <stdlib.h>
#ifdef WIN32
#include <crtdbg.h>
#endif



using namespace openalpp;


int main(int argc,char **argv) {

  std::cerr << "\n Demonstrates how to record a stream and feed that into a Source\n\n" << std::endl;
  try 
  {

    osg::ref_ptr<Capture> input = new Capture();
    osg::ref_ptr<Source> source = new Source(input.get());

    source->setAmbient();
    source->play(); // Start recording and stream it to the Source.

    float limits[2] = {5,-15};
    float delay=10;
    float time=0,angle=0;

    source->setPosition(limits[0],0.0,0.0);
    std::cerr << "Moving sound 5 laps..." << std::endl;
    const int no_laps=5;

    // Do a cheat time loop.
    while(angle<(M_PI*2.0*no_laps)) {
      usleep(delay*1000); // Wait for delay milliseconds

      time +=delay/1000; // Calculate the time in the loop
      angle=M_PI *time;  // What is the resulting angle

      // Calculate a new position
      source->setPosition(limits[0]*cos(angle),0.0,limits[1]*sin(angle));
    }


    std::cout << "Press return to exit" << std::endl;
    std::cin.get();
  } 
  catch(openalpp::Error e) 
  {
    std::cerr << e << "\n";
  } 
  catch(...) 
  {
    std::cerr << "Unknown error!\n";
  }


  return 0;
}
