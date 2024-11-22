function [A, b, Info] = eliminacao_gauss_sem_pivotacao(n, A, b, m)
  Info = 0;
  for j=1:n-1
      if abs(A(j,j)) != 0
        r = dividir(1, A(j,j), m);
      for i=j+1:n
        Mult = multiplicar(A(i,j), r, m);
        A(i,j) = 0;
        for k=j+1:n
          A(i,k) = somar(A(i,k), multiplicar(-Mult, A(j,k), m), m);
        endfor
        b(i) = somar(b(i), multiplicar(-Mult, b(j), m), m);
      endfor
    else
      if Info == 0
        Info = j;
      endif
    endif
  endfor
  if Info == 0 & abs(A(n,n)) == 0
    Info = n;
  endif

