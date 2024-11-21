function [A, b, Info] = eliminacao_gauss_sem_pivotacao(n, A, b)
  Info = 0;
  for j=1:n-1
      if abs(A(j,j)) != 0
      r = 1/A(j,j);
      for i=j+1:n
        Mult = A(i,j)*r;
        A(i,j) = 0;
        for k=j+1:n
          A(i,k) = A(i,k) - Mult*A(j,k);
        endfor
        b(i) = b(i) - Mult*b(j);
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

