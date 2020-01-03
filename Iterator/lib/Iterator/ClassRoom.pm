package Iterator::ClassRoom;
use Moose;
use Iterator::ClassRoomIterator;

with 'Iterator::Aggregate';

has 'students' => (
    traits   => ['Array'],
    is       => 'ro',
    isa      => 'ArrayRef[Iterator::Student]',
    default  => sub { [] },
    handles  => {
        append_student => 'push',
        get_student_at => 'get',
        get_length     => 'count',
    }
);

sub iterator {
    my $self = shift;
    return Iterator::ClassRoomIterator->new( class_room => $self );
}

__PACKAGE__->meta->make_immutable();
