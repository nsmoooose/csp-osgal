/* -*-c++-*- */
/**
* OsgAL - OpenSceneGraph Audio Library
* Copyright (C) 2004 VRlab, Ume� University
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

#include "openalpp/Filestreamupdater"
#include "openalpp/Filestream"
#include "openalpp/Sample"
#include <vorbis/vorbisfile.h>

#ifdef _WIN32 /* We need the following two to set stdin/stdout to binary */
#include <io.h>
#include <fcntl.h>
#endif



using namespace openalpp;

FileStream::FileStream(const std::string& filename,const int buffersize)
    throw (NameError,InitError,FileError) : Stream() 
{
    FILE *filehandle=fopen(filename.c_str(),"rb");
    if(!filehandle)
        throw FileError("FileStream: Couldn't open file: ");

    oggfile = new OggVorbis_File;
    // Check for file type, create a FileStreamUpdater if a known type is
    // detected, otherwise throw an error.

    if(ov_open(filehandle, oggfile, NULL, 0)>=0) 
    {
        vorbis_info *ogginfo=ov_info(oggfile,-1);
        ALenum format;
        if(ogginfo->channels==1) // We'll request 16 bit later...
            format=AL_FORMAT_MONO16;
        else
            format=AL_FORMAT_STEREO16;

        updater_=new FileStreamUpdater(oggfile,
            buffer_->getName(),buffer2_->getAlBuffer(),
            format,ogginfo->rate,
            buffersize*sampleSize(format)); 

    } 
    else 
    {
        fclose(filehandle);
        throw FileError("FileStream: File of unknown type");
    }
}

FileStream::FileStream(const FileStream &stream)
:   Stream((const Stream &)stream),
    oggfile(stream.oggfile)
{
}

FileStream::~FileStream() 
{
}

FileStream &FileStream::operator=(const FileStream &stream) {
    if(&stream!=this) 
    {
        Stream::operator=((const Stream &)stream);
        oggfile = stream.oggfile;
    }
    return *this;
}

void FileStream::setLooping(bool loop) {
    ((FileStreamUpdater *)updater_.get())->setLooping(loop);
}

