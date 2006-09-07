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

#include <iostream>
#include <openalpp/Source>
#include <openalpp/FileStream>

#define CRTDBG_MAP_ALLOC
#include <stdlib.h>
#ifdef WIN32
#include <crtdbg.h>
#endif



using namespace openalpp;


int main(int argc,char **argv) {

  if (argc < 2) {
    std::cerr << "Usage: " << argv[0] << " <ogg-file>" << std::endl;
    return 0;
  }

  try 
    {

        osg::ref_ptr<Source> source = new Source(new FileStream(argv[1]));

        //source->setSound(new FileStream(argv[1]));
        source->setAmbient();
        source->play();

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
