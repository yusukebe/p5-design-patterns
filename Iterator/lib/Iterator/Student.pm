package Iterator::Student;
use Moose;

has 'name' => (
    is => 'ro',
    isa => 'Str',
    reader => 'get_name',
);
