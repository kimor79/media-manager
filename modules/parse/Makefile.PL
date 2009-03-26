use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Media::Manager::Parse',
    AUTHOR              => 'Kimo Rosenbaum <kimor79@yahoo.com>',
    VERSION_FROM        => 'lib/Media/Manager/Parse.pm',
    ABSTRACT_FROM       => 'lib/Media/Manager/Parse.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Media-Manager-Parse-*' },
);
