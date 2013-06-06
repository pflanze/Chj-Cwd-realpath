use ExtUtils::MakeMaker;
my %options = (
	       NAME => 'Chj::Cwd::realpath',
	       VERSION_FROM=> 'realpath.pm',
	      );
WriteMakefile(%options);

sub MY::makefile { '' }
