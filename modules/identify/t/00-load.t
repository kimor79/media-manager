#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Media::Manager::Identify' );
}

diag( "Testing Media::Manager::Identify $Media::Manager::Identify::VERSION, Perl $], $^X" );
