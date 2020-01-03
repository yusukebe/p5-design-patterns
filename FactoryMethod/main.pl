use strict;
use warnings;
use lib 'lib';
use FactoryMethod::IDCardFactory;

my $factory = FactoryMethod::IDCardFactory->new;
my $card1 = $factory->create('Yamada');
my $card2 = $factory->create('Suzuki');
my $card3 = $factory->create('Sato');
$card1->use();
$card2->use();
$card3->use();
