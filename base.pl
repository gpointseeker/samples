#!/usr/bin/perl
use strict;
use warnings;

# Verifica se foi passado um argumento (o ficheiro com a lista de utilizadores)
if (@ARGV != 1) {
    die "Uso: $0 ficheiro_utilizadores\n";
}
