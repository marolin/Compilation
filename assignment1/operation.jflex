%{
    /* using jflex proggram to write a scanner which do the operation of the function.
    */
%}

%%
digit [0-9]
number ({digit})+
integer {number}
float {number}*{number}
operand1 {ineger}|{float}
operand2 {integer}|{float}

id {add({operand1}"+"{operand2})}
id {minus({operand1}"-"{operand2})}
id {multi({operand1}"*"{operand2})}

%{
    add(string input){
        array[] = split(input)
        System.out.println(operand1+operand2);
    }
    minus(string input){
        array[] = split(input)
        System.out.println(operand1-operand2);
    }
    multi(string input){
        array[] = split(input)
        System.out.println(operand1*operand2);
    }
%}

%%
{id} {System.out.println("{add}("{operand1}","operand2") = "+yytext();}
{id} {System.out.println("{minus}("{operand1}","operand2") = "+yytext();}
{id} {System.out.println("{multi}("{operand1}","operand2") = "+yytext();}