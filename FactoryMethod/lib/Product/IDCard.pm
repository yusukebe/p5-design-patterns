package Product::IDCard;
use Moose;
use feature qw/say/;

with 'Product';

has 'owner' => (
    is     => 'ro',
    isa    => 'Str',
    reader => 'get_owner',
);

around BUILDARGS => sub {
    my $orig   = shift;
    my $class  = shift;
    my %params = @_;
    say "Make card for $params{owner}.";
    return $class->$orig(%params);
};

sub use {
    my $self = shift;
    say sprintf( "Use card for %s.", $self->get_owner );
}

__PACKAGE__->meta->make_immutable;
