profissao(ricardo,medico).
profissao(renato,professor).
profissao(ricardo,professor).
profissao(rogeiro,musico).
profissao(renato,musico).
profissao(rogerio,musico).
profissao(rogerio,professor).
profissao(renato,professor).
b(X,Y,Z,W) :- profissao(X,Z);profissao(Y,W).
b(ricardo,renato,medico,medico).
b(renato,rogerio,musico,musico).
b(rogerio,renato,professor,professor).
b(ricardo,renato,professor,musico).
profissoes(RI,RO,RE) :- b(ricardo,renato,RI,RE),b(renato,rogerio,RE,RO),b(rogerio,renato,RO,RE),b(ricardo,renato,RI,RE),!.
