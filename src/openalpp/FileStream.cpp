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

#include "openalpp/Filestreamupdater"
#include "openalpp/Filestream"
#include "openalpp/Sample"
#include <vorbis/vorbisfile.h>
#include <sstream>

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

    unsigned long	ulFrequency = 0;
    unsigned long	ulFormat = 0;
    unsigned long	ulBufferSize;
    unsigned long	ulChannels=0;

    oggfile_ = new OggVorbis_File;
    // Check for file type, create a FileStreamUpdater if a known type is
    // detected, otherwise throw an error.

    if(ov_open(filehandle, oggfile_, NULL, 0)>=0) 
    {
        vorbis_info *ogginfo=ov_info(oggfile_,-1);
        
        ulFrequency = ogginfo->rate;
        ulChannels = ogginfo->channels;

        if (ulChannels==1) {// We'll request 16 bit later...
          ulFormat=AL_FORMAT_MONO16;
          // Set BufferSize to 250ms (Frequency * 2 (16bit) divided by 4 (quarter of a second))
          ulBufferSize = ulFrequency >> 1;
          // IMPORTANT : The Buffer Size must be an exact multiple of the BlockAlignment ...
          ulBufferSize -= (ulBufferSize % 2);
          ulBufferSize = ulBufferSize*2;              
        }
        else if (ulChannels==2) {
          ulFormat=AL_FORMAT_STEREO16;
          // Set BufferSize to 250ms (Frequency * 4 (16bit stereo) divided by 4 (quarter of a second))
          ulBufferSize = ulFrequency;
          // IMPORTANT : The Buffer Size must be an exact multiple of the BlockAlignment ...
          ulBufferSize -= (ulBufferSize % 4);
          ulBufferSize = ulBufferSize*2;              
        }
        else if (ulChannels==4) {
          ulFormat = alGetEnumValue("AL_FORMAT_QUAD16");
          // Set BufferSize to 250ms (Frequency * 8 (16bit 4-channel) divided by 4 (quarter of a second))
          ulBufferSize = ulFrequency * 2;
          // IMPORTANT : The Buffer Size must be an exact multiple of the BlockAlignment ...
          ulBufferSize -= (ulBufferSize % 8);
        }
        else if (ulChannels == 6)
        {
          ulFormat = alGetEnumValue("AL_FORMAT_51CHN16");
          // Set BufferSize to 250ms (Frequency * 12 (16bit 6-channel) divided by 4 (quarter of a second))
          ulBufferSize = ulFrequency * 3;
          // IMPORTANT : The Buffer Size must be an exact multiple of the BlockAlignment ...
          ulBufferSize -= (ulBufferSize % 12);
        }
        else {
          fclose(filehandle);
          std::ostringstream str;
          str << "FileStream: File " << filename << " contains " << ulChannels << " which is not recognized" << std::endl;
          throw FileError(str.str().c_str());
        }

        updater_=new FileStreamUpdater(oggfile_,
            buffer_->getName(),buffer2_->getAlBuffer(),
            ulFormat,ulFrequency,
            ulBufferSize); 

    } 
    else 
    {
        fclose(filehandle);
        throw FileError("FileStream: File of unknown type");
    }
}

FileStream::FileStream(const FileStream &stream)
:   Stream((const Stream &)stream),
    oggfile_(stream.oggfile_)
{
}

FileStream::~FileStream() 
{
}

FileStream &FileStream::operator=(const FileStream &stream) {
    if(&stream!=this) 
    {
        Stream::operator=((const Stream &)stream);
        oggfile_ = stream.oggfile_;
    }
    return *this;
}

void FileStream::setLooping(bool loop) {
    ((FileStreamUpdater *)updater_.get())->setLooping(loop);
}

