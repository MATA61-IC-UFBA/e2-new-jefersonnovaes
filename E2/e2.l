/* recognize tokens for the calculator */

%option noyywrap nodefault yylineno

%{
#include <stdio.h> //biblioteca padrao do C.
#include <stdlib.h>//ajuda o atoi() 
#include "token.h" //inclui o arquivo do token.h

int num;  //valor do token dos numeros
extern void saida_token(token_t token);

%}

%%
[0-9]+       { num = atoi(yytext); } //a função atoi é para mudar de string para numero
"+"          { saida_token(PLUS); }
"-"          { saida_token(MINUS); }
"*"          { saida_token(TIMES); }
"/"          { saida_token(DIV); }
\n           { /* ignorar linhas */ }
[ \t]        { /* ignorar espaços */ }
.            { saida_token(ERROR); }
%%

void saida_token(token_t token) {
    printf("constante decimal: %d\n", num);
    printf("código do token: %d\n", token);
}

