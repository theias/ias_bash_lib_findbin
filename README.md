# ias-bash-lib-findbin

ias-bash-lib-findbin does (almost) the same thing as Perl's FindBin.

This allows for scripts that refer to files relative to themselves to still do this
when they've been symbolically linked somewhere else.

This has been tested in cron.

# License

copyright (C) 2017 Martin VanWinkle, Institute for Advanced Study

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

See 

* http://www.gnu.org/licenses/

## Synopsis

See src/example.sh for a short example.  You should be able to symbolically link it
anywhere, and run it.  It will find HelloLibrary.sh , and call a function defined in it.

<pre>
. /opt/IAS/lib/bash4/IAS-FindBin/FindBin.sh
export PATH="${BASH_FINDBIN_REALBIN}:${PATH}"

. HelloLibrary.sh

</pre>

## Description

* some_script.sh - does something.

# Supplemental Documentation

Supplemental documentation for this project can be found here:

* [Supplemental Documentation](./doc/index.md)

# Installation

Ideally stuff should run if you clone the git repo, and install the deps specified
in either "deb_control" or "rpm_specific"

Optionally, you can build a package which will install the binaries in

* /opt/IAS/bin/ias-bash-lib-findbin/.

# Building a Package

## Requirements

### All Systems

* fakeroot

### Debian

* build-essential

### RHEL based systems

* rpm-build

## Export a specific tag (or just the source directory)

## Supported Systems

### Debian packages

<pre>
  fakeroot make clean install debsetup debbuild
</pre>

### RHEL Based Systems

If you're building from a tag, and the spec file has been put
into the tag, then you can build this on any system that has
rpm building utilities installed, without fakeroot:

<pre>
make clean install cp-rpmspec rpmbuild
</pre>

This will generate a new spec file every time:

<pre>
fakeroot make clean install rpmspec rpmbuild
</pre>

# Notes

* The deb depends on the "realpath" package
* /usr/bin/realpath is provided by the coreutils rpm , which I'm assuming
will be installed on any reasonable system, so I'm not (at this time)
including it in the list of dependencies for rpm.
