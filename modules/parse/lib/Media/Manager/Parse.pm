package Media::Manager::Parse;

use warnings;
use strict;

=head1 NAME

Media::Manager::Parse - Parse a media file

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

This module is used to parse a media file and return as much metadata
as possible.

    use Data::Dumper;
    use Media::Manager::Parse;

    my $obj = Media::Manager::Parse->new( {
                'option_a'    => $value_a,
    } );

    $obj->setOption('option_b', 'option_b');

    my $file = 'Some.Show.S01E15.HDTV-EZTV.mkv';
    my $media = $obj->parse_name($file);
    print Dumper($media);

    $VAR1 = {
              'type' => 'tv',
              'series' => 'Some Show',
              'season' => '1',
              'episode' => '15',
              'format' => 'mkv',
            });

=head1 FUNCTIONS

=head2 new

=cut

sub new {
	my $proto = shift;
	my $class = ref($proto) || $proto;
	my $self = {
		# default options
	};

	# add passed in options to $self
	# after validation

	bless($self, $class);
	return $self;
}

=head2 parse_name

Parse given name to determine information about media file.

  my $file = 'Battlestar.Galactica.S01E15.HDTV-eztv.avi';
  my $hashref = $obj->parse_name($file);

=cut

sub parse_name {
	my ($self, $file) = @_;
	my $hashref = {};

	# TV show checks

	# Match: <show name>.S<season number>E<episode number>
	if($file =~ m/^(.*)(?:\s|\.)S(\d{1,2})E(\d{1,2})(.*)$/i) {
		my $series = $1;
		my $season = $2;
		my $episode = $3;
		my $misc = $4;

		my $name = 'unknown';
		my $format = 'unknown';

		if($season =~ m/^0*(\d)$/) {
			$season = $1;
		}

		if($episode =~ m/^0*(\d)$/) {
			$episode = $1;
		}

		$misc =~ s/^[\s.-]//;

		if($misc =~ m/^(.*)\.([a-z0-9]{3})/i) {
			$name = $1;
			$format = $2;
		} elsif($misc =~ m/^(.+)/i) {
			$name = $1;
		}

		$hashref = {
			'type' => 'tv',
			'series' => $series,
			'season' => $season,
			'episode' => $episode,
			'name' => $name,
			'format' => $format,
			'misc' => $misc,
		};

		return $hashref;
	}
}

=head1 AUTHOR

Kimo Rosenbaum, C<< <kimor79 at yahoo.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-media-manager-parse at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Media-Manager-Parse>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Media::Manager::Parse


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Media-Manager-Parse>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Media-Manager-Parse>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Media-Manager-Parse>

=item * Search CPAN

L<http://search.cpan.org/dist/Media-Manager-Parse/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Kimo Rosenbaum, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Media::Manager::Parse
