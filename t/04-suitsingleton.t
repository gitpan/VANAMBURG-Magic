#!/usr/bin/perl 

use Test::More tests => 6;
use FindBin;
use strict;
use warnings;

use lib "$FindBin::Bin/../lib";

BEGIN {
	use_ok('VANAMBURG::SuitSingleton') || print "Bail out!";
}
my $ss = VANAMBURG::SuitSingleton->instance;
isa_ok( $ss,          'VANAMBURG::SuitSingleton' );
isa_ok( $ss->club,    'VANAMBURG::Suit' );
isa_ok( $ss->heart,   'VANAMBURG::Suit' );
isa_ok( $ss->spade,   'VANAMBURG::Suit' );
isa_ok( $ss->diamond, 'VANAMBURG::Suit' );
