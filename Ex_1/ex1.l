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
"main"              { printf("Function: main\n"); }
"factorial"         { printf("Function: factorial\n"); }
"printf"            { printf("Function: printf\n"); }
[0-9]+              { printf("Number: %s\n", yytext); }
"<="                { printf("Operator: <=\n"); }
"="                 { printf("Operator: =\n"); }
"*"                 { printf("Operator: *\n"); }
"-"                 { printf("Operator: -\n"); }
"\("                { printf("Symbol: (\n"); }
"\)"                { printf("Symbol: )\n"); }
"\{"                { printf("Symbol: {\n"); }
"\}"                { printf("Symbol: }\n"); }
";"                 { printf("Symbol: ;\n"); }
","                 { printf("Symbol: ,\n"); }
"\""                { printf("Symbol: \"\n"); }
"\\n"               { printf("Escape sequence: \\n\n"); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }
[ \t\r\n]+          { /* Ignore whitespace */ }

%%

int main()
{
  yylex();
  return 0;
}

