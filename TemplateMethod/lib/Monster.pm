package Monster;
use Moose::Role;
use feature qw/say/;

has name => (
    is  => 'ro',
    isa => 'Str',
);

requires 'get_attack';
requires 'get_defence';

sub show_info {
    my $self = shift;
    say sprintf( "Name: %s",    $self->name );
    say sprintf( "Attack: %s",  $self->get_attack );
    say sprintf( "Defence: %s", $self->get_defence );
}

1;
