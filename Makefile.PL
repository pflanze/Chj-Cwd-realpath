# christian jaeger
# copied from Inline::C generated Makefile.PL

use ExtUtils::MakeMaker;
my %options = (
	       #INC => '-I/tmp/chris',
	       NAME => 'Chj::Cwd::realpath',
	       #TYPEMAPS => [
	       #	    '/usr/share/perl/5.6.1/ExtUtils/typemap'
	       # ],
	       #VERSION => '0.00'
	       VERSION_FROM=> 'realpath.pm',
	       #PREREQ_PM
	      );
WriteMakefile(%options);

# Remove the Makefile dependency. Causes problems on a few systems.
sub MY::makefile { '' }
