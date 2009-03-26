use strict;
use warnings;
use Test::More;

# Ensure a recent version of Test::Spelling
my $min_ts = 0.11;
eval "use Test::Spelling $min_ts";
plan skip_all => "Test::Spelling $min_ts required for testing POD spelling"
    if $@;

all_pod_files_spelling_ok();
