#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

use lib 'lib/';

plan tests => 3;

BEGIN {
    use_ok( 'Device::RFExplorer' ) || print "Bail out!\n";
    use_ok( 'Device::RFExplorer::Analyzer' ) || print "Bail out!\n";
    use_ok( 'Device::RFExplorer::Generator' ) || print "Bail out!\n";
}

diag( "Testing Device::RFExplorer $Device::RFExplorer::VERSION, Perl $], $^X" );
