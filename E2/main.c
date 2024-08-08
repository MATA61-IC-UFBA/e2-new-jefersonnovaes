#include <stdio.h>
#include <stdlib.h>
#include "token.h"

//funcao gerada pelo Flex
int yylex();

//main inicia a analise.
int main() {
    yylex();
    return 0;
}

