h #include<[a-z]+\.h>
key (int)|(main)|(while)|(break)|(float)|(struct)|(continue)|(return)|(if)|(else)|(switch)|(for)|(void)|(case)|(default)
datatype (int)|(float)
id [a-zA-Z_][a-z0-9A-Z]*
func (scanf)|(printf)
userfunc {datatype}[ ]+{id}[ ]*[\(][ ]*{datatype}[ ]+{id}[ ]*[,][ ]*{datatype}[ ]+{id}[ ]*[\)]
aops [=+\-/*]
rops (<)|(>)|(<=)|(>=)|(==)|(!=)
string ["][^"]*["]
schar [(){}]
punc [,;.:]
const [0-9]+[.][0-9]+|[0-9]+
wspaces [\t]+|[ ]+
comment [/][*][^(*/)]*[*][/]|[/][/](.*)
nid [0-9][a-zA-Z]+
	int n=1;

%%
\n	n++;
{wspaces}	printf("%d white space\n",n);
{comment} printf("%d %s Comment\n",n,yytext);
{h} printf("%d %s Header\n",n,yytext);
{key} printf("%d %s Keyword\n",n,yytext);
{func} printf("%d %s Function\n",n,yytext);
{userfunc} printf("%d %s User Function\n",n,yytext);
{id} printf("%d %s Identifier\n",n,yytext);
{aops} printf("%d %s Arithmetic Operator\n",n,yytext);
{schar} printf("%d %s Special character\n",n,yytext);
{const} printf("%d %s Constant\n",n,yytext);
{rops} printf("%d %s Relational Operator\n",n,yytext);
{nid} printf("%d %s lex error\n",n,yytext);
{string} printf("%d %s String\n",n,yytext);
{punc} printf("%d %s Punctuation\n",n,yytext);
. printf("%d %s lex error\n",n,yytext);
%%


