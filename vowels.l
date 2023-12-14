%{
#include<stdio.h>
int vow_count=0;
int const_count=0;
%}

%%

[aeiouAEIOU] { vow_count++; }
[a-zA-Z] { const_count++; }

%%

int main() {
    printf("Enter a string: ");
    yylex();
    printf("\nNumber of vowels: %d", vow_count);
    printf("\nNumber of consonants: %d\n", const_count);
    return 0;
}

int yywrap(){
return 1;
}