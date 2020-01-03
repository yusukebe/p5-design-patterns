package Adaptor::HumanAdaptor;
use Moose;
use Adaptor::Human;

with 'Adaptor::Student';

has 'human' => (
    is  => 'ro',
    isa => 'Adaptor::Human',
);

around BUILDARGS => sub {
    my $orig   = shift;
    my $class  = shift;
    my %params = @_;
    my $human  = Adaptor::Human->new(%params);
    $class->$orig( human => $human );
};

__PACKAGE__->meta->make_immutable();

sub show_name {
    my $self = shift;
    $self->human->print_name;
}

sub show_age {
    my $self = shift;
    $self->human->print_age;
}
