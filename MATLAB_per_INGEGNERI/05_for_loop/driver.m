% calcola la somma dei primi 10 numeri interi

% s_n = n*(n+1)/2
% s_10 = 55 % test

s = 0;

for k = 1 : 10
    s = s + k % '=' operatore di assegnamento (right to left)
end

%  s  k  s
%  0  1  1
%  1  2  3
%  3  3  6
%  6  4 10
% 10  5 15
%  ...

% compiti per casa
%
% calcola la somma dei primi 10 numeri interi dispari (if - v. ep. #4 MpI - T.I.)
% a piacere - usando il for loop