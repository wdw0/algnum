function [x] = substituicoes_retroativas(n, U, d, m)
   x(n) = dividir(d(n), U(n,n), m);
   for i=n-1:-1:1
    Soma = 0;
    for j=i+1:n
       Soma = somar(Soma, multiplicar(U(i,j), x(j), m), m);
    endfor
    x(i) = dividir(somar(d(i), -Soma, m) , U(i,i), m);
  endfor
endfunction
