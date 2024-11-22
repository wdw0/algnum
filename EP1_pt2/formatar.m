function [y] = formatar(x, m)
  if (x == 0)
    y = 0;
    return;
  endif
  fp = abs(x);
  expo = 0;
  if (fp>=1)
    while true
      if (fp<10)
        break;
      endif
      fp = fp/10;
      expo = expo +1;
     endwhile
   else
     while true
       if (fp>=1)
         break;
       endif
       fp = fp*10;
       expo = expo-1;
      endwhile
   endif
   fator = 10^(m-expo-1);
   y = round(x*fator)/fator;  
endfunction
