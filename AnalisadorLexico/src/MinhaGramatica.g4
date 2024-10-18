grammar MinhaGramatica;


ID: [a-z][a-zA-Z0-9]*;
NUM: DIGITO;
NUMREAL: (DIGITO)+'.'(DIGITO)+;
CAD: '"' (DIGITO|LETRA)* '"';
COND: 'seFaz'|'seNao';
REP: 'repeteAte'|'percorreTudo';
ATR: '=';
OPAR: '/' | '%' | '*' | '+' | '-';
OPRL: '==' | '!=' | '<' | '<='| '>' |'>=';
LER: 'leiaIsso';
ESCREVER: 'escrevaIsso';
OPLOG: 'e'|'ou'|'não';
AP: '(';
FP: ')';
AC: '{';
FC: '}';
DLOP:';';
fragment LETRA: [a-zA-Z];
fragment DIGITO: [0-9];
WS: [ \r\t\n]* ->skip;
ErrorChar: . ;