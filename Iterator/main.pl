use strict;
use warnings;
use feature qw/say/;
use lib 'lib';
use Iterator::ClassRoom;
use Iterator::Student;

my $class_room = Iterator::ClassRoom->new();
$class_room->append_student( Iterator::Student->new( name => 'Tanaka' ) );
$class_room->append_student( Iterator::Student->new( name => 'Yamada' ) );
$class_room->append_student( Iterator::Student->new( name => 'Suzuki' ) );
$class_room->append_student( Iterator::Student->new( name => 'Sato' ) );

my $iterator = $class_room->iterator();
while ( $iterator->has_next() ) {
    my $student = $iterator->next();
    say $student->get_name;
}
