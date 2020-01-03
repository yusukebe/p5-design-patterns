package Adaptor::Human;
use Moose;
use feature qw/say/;

has 'name' => (
    is  => 'ro',
    isa => 'Str',
);
has 'age' => (
    is  => 'ro',
    isa => 'Int',
);

__PACKAGE__->meta->make_immutable();

sub print_name {
    my $self = shift;
    say $self->name;
}

sub print_age {
    my $self = shift;
    say $self->age;
}
