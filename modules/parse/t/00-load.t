#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Media::Manager::Parse' );
}

diag( "Testing Media::Manager::Parse $Media::Manager::Parse::VERSION, Perl $], $^X" );
