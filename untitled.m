L2=1.4426950408889634;   % = 1/log(2)
R2=0.70710678118654752;  % = sqrt(1/2)

if imag(x)|x<0, error('Need x to be real and positive in RR_log2(x)'), end

[s, k] = log2(x) ;  % note: x = s*2^k ,  1/2 <= s < 1
j = (~j)&(s < R2) ;
if any(j(:)),  s(j)=2*s(j);  k=k-j;  end
y = log(s)*L2 + k ;

