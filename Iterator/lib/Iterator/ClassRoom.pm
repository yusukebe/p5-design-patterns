package Iterator::ClassRoom;
use Moose;
use MooseX::AttributeHelpers;
use Iterator::ClassRoomIterator;

with 'Iterator::Aggregate';

has 'students' => (
    metaclass => 'Collection::Array',
    is        => 'ro',
    isa       => 'ArrayRef[Iterator::Student]',
    default   => sub { [] },
    provides  => {
        'push'  => 'append_student',
        'get'   => 'get_student_at',
        'count' => 'get_length',
    }
);

__PACKAGE__->meta->make_immutable();

sub iterator {
    my $self = shift;
    Iterator::ClassRoomIterator->new( class_room => $self );
}
