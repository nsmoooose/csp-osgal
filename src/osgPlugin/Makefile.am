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

libosgdb_osgAL_la_SOURCES = \
	IO_OccludeCallback.cpp \
	IO_SoundNode.cpp \
	IO_SoundRoot.cpp \
	IO_SoundState.cpp

lib_LTLIBRARIES = libosgdb_osgAL.la

libosgdb_osgAL_la_CPPFLAGS = -I$(top_srcdir)/include
libosgdb_osgAL_la_LIBADD = ../osgAL/libosgAL.la
libosgdb_osgAL_la_LDFLAGS = -version-info 2:0:0
