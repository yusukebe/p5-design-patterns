package TemplateMethod::Dragon;
use Moose;

with 'TemplateMethod::AbstractMonster';

sub get_attack {
    return 60;
}

sub get_defence {
    return 45;
}

__PACKAGE__->meta->make_immutable();
