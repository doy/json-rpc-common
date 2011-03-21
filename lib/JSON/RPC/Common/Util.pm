#!/usr/bin/perl

package JSON::RPC::Common::Util;
# ABSTRACT: Utility subroutines

use strict;
use warnings;

use Any::Moose;
BEGIN{
  no warnings 'once';
  if( Any::Moose::moose_is_preferred ){
    require Class::MOP;
    *load_class = \&Class::MOP::load_class;
  }else{
    require Mouse::Util;
    *load_class = \&Mouse::Util::load_class;
  }
}

require Exporter;
our @ISA = 'Exporter';

our @EXPORT_OK = 'load_class';

__PACKAGE__

=pod

=head1 SYNOPSIS

	use JSON::RPC::Common::Util qw(load_class);

=head1 DESCRIPTION

Use functions from Moose or Mouse that can't easily be imported by Any::Moose

=head1 FUNCTIONS

=over 4

=item load_class

Uses Class::MOP::load_class if Moose is loaded.

Otherwise uses Mouse::Util::load_class

=back

=cut
