use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Media::Manager::Inject',
    AUTHOR              => 'Kimo Rosenbaum <kimor79@yahoo.com>',
    VERSION_FROM        => 'lib/Media/Manager/Inject.pm',
    ABSTRACT_FROM       => 'lib/Media/Manager/Inject.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Media-Manager-Inject-*' },
);
