function [c] = multiplicar(a, b, m)
  a = formatar(a, m);
  b = formatar(b, m);
  c = formatar(a*b, m);
endfunction
