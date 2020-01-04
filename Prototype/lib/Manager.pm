package Manager;
use Moose;

has 'showcase' => (
    traits  => ['Hash'],
    is      => 'ro',
    isa     => 'HashRef',
    default => sub { {} },
    handles => {
        set_product => 'set',
        get_product => 'get',
    },
);

sub register {
    my ( $self, $name, $proto ) = @_;
    $self->set_product( $name, $proto );
}

sub create {
    my ( $self, $name ) = @_;
    my $product = $self->get_product($name);
    return $product->create_clone;
}

__PACKAGE__->meta->make_immutable;
