package Media::Manager::Inject;

use warnings;
use strict;

=head1 NAME

Media::Manager::Inject - Inject new media into your media library

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Uses Media::Manager::Parse objects and injects them into your media
library (i.e., Plex).

    use Media::Manager::Inject;

    my $file = 'some.show.s01e15.hdtv-blahblah.avi'
    my $new_media = Media::Manager::Inject->new( {
                'file'    => $file,
                'option_a'    => $value_a,
    } );

    print $new_media->library_name();
    # Some Show/Season 1/Some.Show.S01E15.episode_title.avi

    $new_media->setOption('option_b', 'option_b');
    print $new_media->library_name();
    # Some Show/Season 01/Some.Show.S01E15.episode_title.avi

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 FUNCTIONS

=head2 function1

=cut

sub function1 {
}

=head2 function2

=cut

sub function2 {
}

=head1 AUTHOR

Kimo Rosenbaum, C<< <kimor79 at yahoo.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-media-manager-inject at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Media-Manager-Inject>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Media::Manager::Inject


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Media-Manager-Inject>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Media-Manager-Inject>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Media-Manager-Inject>

=item * Search CPAN

L<http://search.cpan.org/dist/Media-Manager-Inject/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Kimo Rosenbaum, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1; # End of Media::Manager::Inject
