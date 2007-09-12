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
MAINTAINERCLEANFILES = \
	Makefile.in \
	configure \
	aclocal.m4 \
	config/config.guess \
	config/config.sub \
	config/depcomp \
	config/install-sh \
	config/ltmain.sh \
	config/configure \
	config/missing

SUBDIRS = src include examples

EXTRA_DIST = \
	autogen.sh \
	runme.bat \
	howtobuild_vs2003.bat \
	diff_ignore \
	osgal.pc.in \
	config/ccache.m4 \
	$(wildcard data/*.ogg) \
	$(wildcard data/*.wav) \
	$(wildcard data/*.osg) \
	$(wildcard data/*.ac) \
	$(wildcard data/*.bat) \
	doc/doxygen.cfg \
	doc/index.html \
	VisualStudio/osgPlugin_osgAL/osgPlugin_osgAL.dsp \
	VisualStudio/osgPlugin_osgAL/osgPlugin_osgAL-vc7.vcproj \
	VisualStudio/osgPlugin_osgAL/osgPlugin_osgAL.vcproj \
	VisualStudio/openalpp/openalpp.vcproj \
	VisualStudio/openalpp/openalpp.sln \
	VisualStudio/openalpp/openalpp.dsp \
	VisualStudio/openalpp/openalpp-vc7.vcproj \
	VisualStudio/examples/osgalocclude/Example_osgalocclude.vcproj \
	VisualStudio/examples/osgalocclude/Example_osgalocclude.dsp \
	VisualStudio/examples/osgalocclude/Example_osgalocclude-vc7.vcproj \
	VisualStudio/examples/openalpp/moving-vc7.vcproj \
	VisualStudio/examples/openalpp/multiple.vcproj \
	VisualStudio/examples/openalpp/playOgg-vc7.vcproj \
	VisualStudio/examples/openalpp/capture-vc7.vcproj \
	VisualStudio/examples/openalpp/testfstream.dsp \
	VisualStudio/examples/openalpp/playOgg.dsp \
	VisualStudio/examples/openalpp/playOgg.vcproj \
	VisualStudio/examples/openalpp/simple.dsp \
	VisualStudio/examples/openalpp/testfstream.vcproj \
	VisualStudio/examples/openalpp/multiple.dsp \
	VisualStudio/examples/openalpp/simple.vcproj \
	VisualStudio/examples/openalpp/multiple-vc7.vcproj \
	VisualStudio/examples/openalpp/moving.vcproj \
	VisualStudio/examples/openalpp/multiple_oggstreams-vc7.vcproj \
	VisualStudio/examples/openalpp/capture.vcproj \
	VisualStudio/examples/openalpp/multiple_oggstreams.dsp \
	VisualStudio/examples/openalpp/moving.dsp \
	VisualStudio/examples/openalpp/simple-vc7.vcproj \
	VisualStudio/examples/openalpp/capture.dsp \
	VisualStudio/examples/openalpp/multiple_oggstreams.vcproj \
	VisualStudio/examples/openalpp/testfstream-vc7.vcproj \
	VisualStudio/examples/osgalmultiple/Example_osgalmultiple.vcproj \
	VisualStudio/examples/osgalmultiple/Example_osgalmultiple-vc7.vcproj \
	VisualStudio/examples/osgalmultiple/Example_osgalmultiple.dsp \
	VisualStudio/examples/osgal/Example_osgaldemo-vc7.vcproj \
	VisualStudio/examples/osgal/Example_osgaldemo.dsp \
	VisualStudio/examples/osgal/Example_osgaldemo.vcproj \
	VisualStudio/examples/osgal/osgaldemo.vcproj \
	VisualStudio/examples/osgalviewer/Example_osgalviewer-vc7.vcproj \
	VisualStudio/examples/osgalviewer/Example_osgalviewer.dsp \
	VisualStudio/examples/osgalviewer/Example_osgalviewer.vcproj \
	VisualStudio/osgAL/osgAL-vc7.sln \
	VisualStudio/osgAL/osgAL.vcproj \
	VisualStudio/osgAL/osgAL.dsw \
	VisualStudio/osgAL/osgAL.sln \
	VisualStudio/osgAL/osgAL-vc7.vcproj \
	VisualStudio/osgAL/osgAL.dsp

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = osgal.pc

#AUTOMAKE_OPTIONS = foreign

ACLOCAL_AMFLAGS = -I config
