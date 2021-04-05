%state comment
<comment>.{ /*using jflex program to write a scanner which recognizes a correct email address*/}

%%

%class lexer
%standalone
%unicode

digit [0-9]
letter [a-zA-Z]
id ({letter}|{digit})+
username [id]
domain_name [id]
extension ({letter})+
email {username}\@{domain_name}|({extension})+
email {username}\@{domain_name}|{extension}

%%
{email} {System.out.println("correct: "+ yytext() );}
{email} {System.out.println("incorrect: "+ yytext() );}