#!/bin/sh

rm -f config.cache
rm -f acconfig.cache
autoreconf -i $@

rm -Rf autom4te.cache 

