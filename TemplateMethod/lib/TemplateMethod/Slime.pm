package TemplateMethod::Slime;
use Moose;

with 'TemplateMethod::AbstractMonster';

sub get_attack {
    return 15;
}

sub get_defence {
    return 10;
}

__PACKAGE__->meta->make_immutable();
