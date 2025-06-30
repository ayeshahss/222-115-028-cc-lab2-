%option noyywrap

%{
//Roll Number: 1703xxx
//
%}

digit [0-9]
delim [ \t]

%%

"int"               { printf("Keyword: int\n"); }
"while"             { printf("Keyword: while\n"); }
"if"                { printf("Keyword: if\n"); }
"else"              { printf("Keyword: else\n"); }
"return"            { printf("Keyword: return\n"); }

"main"              { printf("Function: main\n"); }
"printf"            { printf("Function: printf\n"); }

"=="|"="|"%"|"\\*"|"/"|"\\+"|"-"   { printf("Operator: %s\n", yytext); }

"\{"               { printf("Symbol: {\n"); }
"\}"               { printf("Symbol: }\n"); }
"\("               { printf("Symbol: (\n"); }
"\)"               { printf("Symbol: )\n"); }
";"                 { printf("Symbol: ;\n"); }
","                 { printf("Symbol: ,\n"); }

\"([^"]*)\"         { printf("String literal: \"%s\"\n", yytext); }

[0-9]+              { printf("Number: %s\n", yytext); }

[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }

[ \t\r\n]+          { /* Skip whitespace */ }



%%

int main()
{
  yylex();
  return 0;
}