#!/usr/bin/perl

use Test::More tests => 16;
use FindBin;
use strict;
use warnings;

use lib "$FindBin::Bin/../lib";

BEGIN {
	use_ok('VANAMBURG::FaceValueSingleton') || print "Bail out!";
}
my $fvs = VANAMBURG::FaceValueSingleton->instance;
isa_ok( $fvs,                      'VANAMBURG::FaceValueSingleton' );
isa_ok( $fvs->ace,                 'VANAMBURG::FaceValue' );
isa_ok( $fvs->two,                 'VANAMBURG::FaceValue' );
isa_ok( $fvs->three,               'VANAMBURG::FaceValue' );
isa_ok( $fvs->four,                'VANAMBURG::FaceValue' );
isa_ok( $fvs->five,                'VANAMBURG::FaceValue' );
isa_ok( $fvs->six,                 'VANAMBURG::FaceValue' );
isa_ok( $fvs->seven,               'VANAMBURG::FaceValue' );
isa_ok( $fvs->eight,               'VANAMBURG::FaceValue' );
isa_ok( $fvs->nine,                'VANAMBURG::FaceValue' );
isa_ok( $fvs->ten,                 'VANAMBURG::FaceValue' );
isa_ok( $fvs->jack,                'VANAMBURG::FaceValue' );
isa_ok( $fvs->queen,               'VANAMBURG::FaceValue' );
isa_ok( $fvs->king,                'VANAMBURG::FaceValue' );
isa_ok( $fvs->default_value_cycle, 'ARRAY' );

1;
