package Media::Manager::Identify;

use warnings;
use strict;

use Carp qw(croak);

=head1 NAME

Media::Manager::Identify - Identify media type

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

This module is used to determine what type of media a file is. Media
in this case means audio file or a video file.

    use Media::Manager::Identify qw(identify);

    my $type = identify($file [, %params]);

=head1 FUNCTIONS

=head2 identify

identify() is the main do-it-all function. It calls other functions as
needed to determine whether the file is an audio file or a video file.
identify() takes either a single file or a directory containing multiple
containing multiple parts of an "item" (i.e., a two-part movie or
collection of .vob files).

  my $type = identify($file [, %params]);

identify() returns a string, 'audio' or 'video', on success or croaks
(see L<carp>) with an error message.

A second argument may be given which determine how the file should
be identified.

  my $type = identify($file);
  # Equivalent to
  my $type = identify($file, { 'by' => 'name' });

  my $type = identify($file, { 'by' => 'file' });

The following parameters are supported:

=head3 by

Specifies how to identify the media. Valid options are 'name' (the
default) to only use the filename, or 'file' to inspect the actual
file contents and look for certain characteristics.

=cut

sub identify {
	my ($input, $params) = @_;
	my $err;
	my $type;

	if(-f $input) {
		my $type = 'file';
	} elsif(-d $input) {
		my $type = 'dir';
	}

	unless(defined($type)) {
		$err = "No such file or directory";
	}

	croak($err);
}

=head1 AUTHOR

Kimo Rosenbaum, C<< <kimor79 at yahoo.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-media-manager-identify at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Media-Manager-Identify>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Media::Manager::Identify


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Media-Manager-Identify>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Media-Manager-Identify>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Media-Manager-Identify>

=item * Search CPAN

L<http://search.cpan.org/dist/Media-Manager-Identify/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Kimo Rosenbaum, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Media::Manager::Identify
