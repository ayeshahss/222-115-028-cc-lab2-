%option noyywrap

%{
//Roll Number: 1703xxx
//
%}

digit [0-9]
delim [ \t]

%%
"int"               { printf("Keyword: int\n"); }
"return"            { printf("Keyword: return\n"); }
"if"                { printf("Keyword: if\n"); }
"else"              { printf("Keyword: else\n"); }
"main"              { printf("Function: main\n"); }
"srand"             { printf("Function: srand\n"); }
"rand"              { printf("Function: rand\n"); }
"scanf"             { printf("Function: scanf\n"); }
"printf"            { printf("Function: printf\n"); }
"time"              { printf("Function: time\n"); }

"=="|"="|"%"|"+"    { printf("Operator: %s\n", yytext); }

"\("               { printf("Symbol: (\n"); }
"\)"               { printf("Symbol: )\n"); }
"\{"               { printf("Symbol: {\n"); }
"\}"               { printf("Symbol: }\n"); }
","                 { printf("Symbol: ,\n"); }
";"                 { printf("Symbol: ;\n"); }

\"([^"]*)\"         { printf("String literal: \"%s\"\n", yytext); }

[0-9]+              { printf("Number: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }

[ \t\r\n]+          { /* Ignore whitespace */ }



%%

int main()
{
  yylex();
  return 0;
}