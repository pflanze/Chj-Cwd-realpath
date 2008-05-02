# Tue Jun 17 12:03:13 2003  Christian Jaeger, christian.jaeger@ethlife.ethz.ch
# 
# Copyright 2001 by ethlife renovation project people
# Published under the terms of the GNU General Public License
#
# $Id$

=head1 NAME

Chj::Cwd::realpath

=head1 SYNOPSIS

 use Chj::Cwd::realpath;
 print xrealpath "/dev/hda11";
 print realpath("/dev/hda11")||die;

=head1 DESCRIPTION

Interface to the realpath function from the Unix C library.

=cut


package Chj::realpath;
$VERSION= "0.1";
@EXPORT=qw(realpath xrealpath);
require Exporter;
require DynaLoader;
@ISA=qw(Exporter DynaLoader);
# ways to load a shared lib?  ExtUtils::Mkbootstrap? DynaLoader? XSLoader...

use strict;

bootstrap __PACKAGE__;


1;
