package FactoryMethod::IDCard;
use Moose;
use feature qw/say/;

with 'FactoryMethod::Product';

has 'owner' => (
    is     => 'ro',
    isa    => 'Str',
    reader => 'get_owner',
);

around BUILDARGS => sub {
    my $orig   = shift;
    my $class  = shift;
    my %params = @_;
    say sprintf( "Make card for %s.", $params{owner} );
    return $class->$orig(@_);
};

sub use {
    my $self = shift;
    say sprintf( "Use card for %s.", $self->get_owner );
}

__PACKAGE__->meta->make_immutable();
