package Test::Device::RFExplorer;

use Test::Most;
use base 'Test::Class';

use lib '/home/ekki/Perl/Device-RFExplorer/lib/';

sub class { 'Device::RFExplorer' };

sub startup : Tests(startup => 1) {
	my $self = shift;
	use_ok $self->class;
}

sub constructor : Tests(3) {
	my $self = shift;
	my $class = $self->class;
	can_ok $class, 'new';
	ok my $rfe = $class->new( {serialport => 'someport'} ), '...constructor succeeded';
	isa_ok $rfe, $class, '... correct object class';
}

1;
