#!/usr/bin/perl

package JSON::RPC::Common::TypeConstraints;
# ABSTRACT: Type constraint library

use strict;
use warnings;

use Any::Moose ('X::Types' => [-declare => [qw(JSONDefined JSONValue JSONContainer)]]);

subtype JSONDefined, as 'Value|ArrayRef|HashRef';

subtype JSONValue, as 'Undef|Value|ArrayRef|HashRef';

subtype JSONContainer, as 'ArrayRef|HashRef';

__PACKAGE__

=pod

=head1 SYNOPSIS

	use JSON::RPC::Common::TypeConstraints qw(JSONValue);

=head1 DESCRIPTION

See L<MooseX::Types>

=head1 TYPES

=over 4

=item JSONDefined

C<Value|ArrayRef|HashRef>

=item JSONValue

C<Undef|Value|ArrayRef|HashRef>

=item JSONContainer

C<ArrayRef|HashRef>

=back

=cut


