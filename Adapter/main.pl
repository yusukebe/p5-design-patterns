use strict;
use warnings;
use lib 'lib';
use Adaptor::HumanAdaptor;

my $student = Adaptor::HumanAdaptor->new( name => 'Tanaka', age => 25 );
$student->show_name();
$student->show_age();
