%A = [-2 3 1; 2 1 -4; 7 10 -6];
%b = [-5; -9; 2];
%m = 3;
A = [1 -3 5 6; -9 4 -1 0; 3 2 -2 7; 1 2 5 -4];
b = [17; 29; -11; 7];
m = 4;
%A = [0 1 3 2 4; 8 -2 9 -1 2; 5 1 1 7 2; -2 4 5 1 0; 7 -3 2 -4 1];
%b = [3; -5; 6; -1; 8];
%m = 5;
n = size(A)(1);
A
b
n
m

%[U, d, Info] = eliminacao_gauss_sem_pivotacao(n, A, b, m);
[U, d, Info] = eliminacao_gauss_com_pivotacao (n, A, b, m);
U
d
Info

if Info==0
  x = substituicoes_retroativas(n, U, d, m);
  x
  
  r = somar(b, multiplicar(A, transpose(x), m), m);
  r
endif