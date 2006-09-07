#!/bin/sh

amversion=1.7
#acversion=2.50

function print_usage() {
    echo "Usage:
    autogen.sh [--ac {autoconf version}] [--am {automake version}] [configure arguments]"
    exit
}

configure_args=

while [ $1 ];
do
    case "$1" in
        --ac)
	if [ -z $2 ]; then
	    print_usage
	fi
	acversion=$2
	shift; shift ;;
        --am)
	if [ -z $2 ]; then
	    print_usage
	fi
	amversion=$2
	shift; shift ;;
	*)
	configure_args="$configure_args $1"
	shift;;
    esac
done

aclocal-$amversion
libtoolize --force
automake-$amversion --foreign --add-missing
autoconf$acversion
echo ./configure $configure_args
#./configure $configure_args
./configure --disable-libtool-lock $configure_args

