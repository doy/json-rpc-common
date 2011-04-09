#!/usr/bin/perl

package JSON::RPC::Common::TypeConstraints;
# ABSTRACT: Type constraint library

use strict;
use warnings;

use Any::Moose ('X::Types' => [-declare => [qw(JSONDefined JSONValue JSONContainer)]]);

BEGIN{
  my @types = qw(Value ArrayRef HashRef Undef);
  my $PREFERRED = $Any::Moose::PREFERRED;
  my $type_module = $PREFERRED.'X::Types::'.$PREFERRED;

  eval "require $type_module" or die $@;
  $type_module->import(@types);
}

if( Any::Moose::moose_is_preferred ){
  subtype JSONDefined, as Value|ArrayRef|HashRef;
  subtype JSONValue, as Undef|Value|ArrayRef|HashRef;
  subtype JSONContainer, as ArrayRef|HashRef;
}else{
  subtype JSONDefined, as 'Value|ArrayRef|HashRef';
  subtype JSONValue, as 'Undef|Value|ArrayRef|HashRef';
  subtype JSONContainer, as 'ArrayRef|HashRef';
}

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


