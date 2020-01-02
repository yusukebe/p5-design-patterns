package Iterator::ClassRoomIterator;
use Moose;
use MooseX::AttributeHelpers;

with 'Iterator::Iterator';

has 'class_room' => (
    is  => 'ro',
    isa => 'Iterator::ClassRoom',
);
has 'index' => (
    metaclass => 'Counter',
    is        => 'ro',
    isa       => 'Num',
    default   => sub { 0 },
    provides  => {
        inc => 'increment_index',
    },
);

__PACKAGE__->meta->make_immutable();

sub has_next {
    my $self = shift;
    return $self->index < $self->class_room->get_length;
}

sub next {
    my $self    = shift;
    my $student = $self->class_room->get_student_at( $self->index );
    $self->increment_index;
    return $student;
}
