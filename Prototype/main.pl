use strict;
use warnings;
use lib 'lib';
use Prototype::Manager;
use Prototype::Product::UnderlinePen;
use Prototype::Product::MessageBox;

my $manager = Prototype::Manager->new;
my $upen = Prototype::Product::UnderlinePen->new( char => '~' );
my $mbox = Prototype::Product::MessageBox->new( char => '*' );
my $pbox = Prototype::Product::MessageBox->new( char => '+' );
$manager->register('strong message', $upen);
$manager->register('warning box', $mbox);
$manager->register('slash box', $pbox);

my $p1 = $manager->create('strong message');
$p1->use('Hello world');
my $p2 = $manager->create('warning box');
$p2->use('Hello world');
my $p3 = $manager->create('slash box');
$p3->use('Hello world');
