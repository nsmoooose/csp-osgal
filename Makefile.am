
SUBDIRS =       src include examples

EXTRA_DIST =    diff_ignore autogen.sh osgal.pc.in

pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = osgal.pc

$(pkgconfig_DATA): config.status

ALL:
	cd $(top_builddir); make -j4

ALL-install:
	cd $(top_builddir); make -j4 install

