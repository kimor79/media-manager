use strict;
use warnings;
use Test::More tests => 6;
use Test::Deep;

my %test_data;

use Media::Manager::Parse;
my $obj = Media::Manager::Parse->new();

$test_data{'Battlestar.Galactica.S04E12.HDTV-EZTV.avi'} = {
	'type' => 'tv',
	'series' => 'Battlestar.Galactica',
	'season' => '4',
	'episode' => '12',
	'format' => 'avi',
	'name' => 'HDTV-EZTV',
	'misc' => 'HDTV-EZTV.avi',
};

$test_data{'Battlestar Galactica S04E12.HDTV-EZTV.avi'} = {
	'type' => 'tv',
	'series' => 'Battlestar Galactica',
	'season' => '4',
	'episode' => '12',
	'format' => 'avi',
	'name' => 'HDTV-EZTV',
	'misc' => 'HDTV-EZTV.avi',
};

$test_data{'Lost.S4E02'} = {
	'type' => 'tv',
	'series' => 'Lost',
	'season' => '4',
	'episode' => '2',
	'format' => 'unknown',
	'name' => 'unknown',
	'misc' => '',
};

$test_data{'Lost.S4E02.HDTV-EZTV'} = {
	'type' => 'tv',
	'series' => 'Lost',
	'season' => '4',
	'episode' => '2',
	'format' => 'unknown',
	'name' => 'HDTV-EZTV',
	'misc' => 'HDTV-EZTV',
};

$test_data{'Lost.S00E02'} = {
	'type' => 'tv',
	'series' => 'Lost',
	'season' => '0',
	'episode' => '2',
	'format' => 'unknown',
	'name' => 'unknown',
	'misc' => '',
};

$test_data{'Lost.S04E2'} = {
	'type' => 'tv',
	'series' => 'Lost',
	'season' => '4',
	'episode' => '2',
	'format' => 'unknown',
	'name' => 'unknown',
	'misc' => '',
};


foreach my $file (keys(%test_data)) {
	my $got = $obj->parse_name($file);
	my $expected = $test_data{$file};
	cmp_deeply($got, $expected, $file);
}
