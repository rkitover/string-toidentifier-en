package String::ToIdentifier::EN;

use 5.008001;
use strict;
use warnings;
use Exporter 'import';

=head1 NAME

String::ToIdentifier::EN - Convert Strings to English Program Identifiers

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

    use String::ToIdentifier::EN 'to_identifier';

    to_identifier 'foo-bar';      # FooDashBar
    to_identifier 'foo-bar', '_'; # foo_dash_bar
    to_identifier 'foo.bar', '_'; # foo_dot_bar

=head1 DESCRIPTION

This module provides a utility method, L</to_identifier> for converting an
arbitrary string into a readable representation using the ASCII subset of C<\w>
for use as an identifier in a computer program. The intent is to make unique
identifier names from which the content of the original string can be easily
inferred by a human just by reading the identifier.

Currently, this process is one way only, and will likely remain this way.

The default is to create CamelCase identifiers, or you may pass in a separator
char of your choice such as C<_>.

=head1 EXPORT

Optionally exports the L</to_identifier> function.

=cut

our @EXPORT_OK = qw/to_identifier/;

=head1 SUBROUTINES

=head2 to_identifier

Takes the string to be converted to an identifier, and optionally a separator
char such as C<_>. If a separator char is not provided, a CamelCase identifier
will be returned.

=cut

sub to_identifier {
}

=head1 AUTHOR

Rafael Kitover, C<< <rkitover@cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-string-toidentifier-en at
rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=String-ToIdentifier-EN>.  I
will be notified, and then you'll automatically be notified of progress on your
bug as I make changes.

=head1 SUPPORT

More information on this module is availableat:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=String-ToIdentifier-EN>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/String-ToIdentifier-EN>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/String-ToIdentifier-EN>

=item * Search CPAN

L<http://search.cpan.org/dist/String-ToIdentifier-EN/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2011 Rafael Kitover <rkitover@cpan.org>.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of String::ToIdentifier::EN
