#
# Copyright (C) 2004-2006 Anders Backman, VRlab <andersb@cs.umu.se>
# Copyright (C) 2006 Loic Dachary <loic@gnu.org>
#
#    This library is free software; you can redistribute it and/or
#    modify it under the terms of the GNU Lesser General Public
#    License as published by the Free Software Foundation; either
#    version 2.1 of the License, or (at your option) any later version.
#
#    This library is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#    Lesser General Public License for more details.
#
#    You should have received a copy of the GNU Lesser General Public
#    License along with this library; if not, write to the Free Software
#    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
#
MAINTAINERCLEANFILES = Makefile.in

EXTRA_DIST = \
	a.wav bee.wav high-e.wav low-e.wav \
	teststream.cpp testmic.cpp testsend.cpp

INCLUDES = -I$(top_srcdir)/include

LDADD = ../../src/openalpp/libopenalpp.la 

noinst_PROGRAMS = openalpp_testfstream openalpp_playogg openalpp_multiple openalpp_capture openalpp_simple openalpp_moving openalpp_multiple_oggstreams

openalpp_capture_SOURCES = capture.cpp

openalpp_simple_SOURCES = simple.cpp

openalpp_moving_SOURCES = moving.cpp

openalpp_testfstream_SOURCES = testfstream.cpp

openalpp_multiple_SOURCES = multiple.cpp

openalpp_playogg_SOURCES = playOgg.cpp

openalpp_multiple_oggstreams_SOURCES = multiple_oggstreams.cpp
