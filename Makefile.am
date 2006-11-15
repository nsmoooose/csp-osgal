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
	diff_ignore \
	osgal.pc.in \
	config/ccache.m4 \
	$(wildcard data/*.ogg) \
	$(wildcard data/*.wav) \
	$(wildcard data/*.osg) \
	$(wildcard data/*.ac) \
	$(wildcard data/*.bat) \
	doc/doxygen.cfg \
	doc/index.html

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = osgal.pc

AUTOMAKE_OPTIONS = foreign

ACLOCAL_AMFLAGS = -I config
