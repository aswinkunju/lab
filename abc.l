%{
#include <stdio.h>
#include <string.h>
%}

%%
.*abc.* {
int i;
for(i=0; i<strlen(yytext); i++) {
if(yytext[i]=='a' && yytext[i+1]=='b' && yytext[i+2]=='c') {
printf("ABC");
i+=2;
}
else {
printf("%c", yytext[i]);
}
}
}

%%

int main() {
    printf("Enter input string:\n");
    yylex();
    return 0;
}

int yywrap(){
return 1;
}
