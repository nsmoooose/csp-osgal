
INCLUDES = -I$(top_builddir)/include

if WITH_PORTAUDIO
portaudiolibs = -lportaudio
endif
if WITH_OGGVORBIS
ogglibs = -lvorbisfile -lvorbis -logg
endif


LDADD = ../src/libopenalpp.la -lopenal $(portaudiolibs) $(ogglibs) -lOpenThreads


noinst_PROGRAMS = openalpp_testfstream openalpp_multiple openalpp_testmic openalpp_simple openalpp_moving 

openalpp_testmic_SOURCES = testmic.cpp

openalpp_simple_SOURCES = simple.cpp

openalpp_moving_SOURCES = moving.cpp

openalpp_testfstream_SOURCES = testfstream.cpp

openalpp_multiple_SOURCES = multiple.cpp
