package FactoryMethod::IDCardFactory;
use Moose;
use FactoryMethod::IDCard;

with 'FactoryMethod::Factory';

has 'owners' => (
    traits  => ['Array'],
    is      => 'ro',
    isa     => 'ArrayRef[Str]',
    default => sub { [] },
    handles => {
        add_owner => 'push',
    },
    reader => 'get_owners',
);

sub create_product {
    my ( $self, $owner ) = @_;
    return FactoryMethod::IDCard->new( owner => $owner );
}

sub register_product {
    my ( $self, $product ) = @_;
    my $owner = $product->get_owner;
    $self->add_owner($owner);
}

__PACKAGE__->meta->make_immutable();
