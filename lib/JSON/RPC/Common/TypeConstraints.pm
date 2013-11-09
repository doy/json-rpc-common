#!/usr/bin/perl

package JSON::RPC::Common::TypeConstraints;
# ABSTRACT: Type constraint library

use strict;
use warnings;

use Type::Library -base, -declare => qw(JSONDefined JSONValue JSONContainer);
use Types::Standard qw(Value ArrayRef HashRef Undef);
use Type::Utils -all;

subtype JSONDefined, as Value|ArrayRef|HashRef;

subtype JSONValue, as Undef|Value|ArrayRef|HashRef;

subtype JSONContainer, as ArrayRef|HashRef;

__PACKAGE__

__END__

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


