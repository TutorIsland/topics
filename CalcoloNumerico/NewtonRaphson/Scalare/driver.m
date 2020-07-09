% Driver for the Newton-Raphson algorithm.
%
% Finding the right zero for 'f(x) = x^2 - 4' (i.e. x = +2).
%
% Modify the functions 'f' and 'df' (accordingly), to find
% zeros of different functions.
%
% Experiment with different values for guess and tolerance.

% Pre-requisites to understand this code (TODO link to MpI):
% - basic computer programming principles:
%   - variables
%   - functions
%   - while loop
% - theory for the Newton-Raphson Method (TODO link)

format long;

x0 = 1.0; % guess
tol = 10^-5; % tolerance

[sol n_iter] = nr(x0, @f, @df, tol); % should be 2.0, for f(x) = x^2 - 4

output_message = ['Solution found, x = ' num2str(sol) ' after ' num2str(n_iter) ' iterations.'];
disp(output_message);
