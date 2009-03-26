#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Media::Manager::Inject' );
}

diag( "Testing Media::Manager::Inject $Media::Manager::Inject::VERSION, Perl $], $^X" );
