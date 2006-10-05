
INCLUDES = -I$(top_builddir)/include

if WITH_OGGVORBIS
ogglibs = -lvorbisfile -lvorbis -logg
endif


LDADD = ../src/libopenalpp.la -lopenal  $(ogglibs) -lOpenThreads


noinst_PROGRAMS = openalpp_testfstream openalpp_playogg openalpp_multiple openalpp_capture openalpp_simple openalpp_moving openalpp_multiple_oggstreams

openalpp_capture_SOURCES = capture.cpp

openalpp_simple_SOURCES = simple.cpp

openalpp_moving_SOURCES = moving.cpp

openalpp_testfstream_SOURCES = testfstream.cpp

openalpp_multiple_SOURCES = multiple.cpp

openalpp_playogg_SOURCES = playOgg.cpp

openalpp_multiple_oggstreams_SOURCES = multiple_oggstreams.cpp
