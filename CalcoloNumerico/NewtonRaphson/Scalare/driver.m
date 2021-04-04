% Driver for the Newton-Raphson algorithm - single variable version.
% In this example, we find the right zero for 'f(x) = x^2 - 4' (i.e. x = +2).
%
% Code Repository is at:
% https://github.com/TutorIsland/topics/tree/master/CalcoloNumerico/NewtonRaphson/Scalare

% Pre-requisites to understand this code and Numerical Metod:
% - basic computer programming principles, "MATLAB per INGEGNERI" playlist: https://www.youtube.com/playlist?list=PLtHxIAAvyZZ6xYqsUG20tjjjO8A-XlMJ4
%   - variables: https://youtu.be/Spx3fm62mOw
%   - functions: https://youtu.be/5Qx7hD-Ulf8
%   - while loop: https://youtu.be/KgFY3D18FYQ
%   - tools: https://youtu.be/ozJU9flU4sA
% - basic high school algebra and calculus
% - theory and proof for the Newton-Raphson Method and LINE-BY-LINE explanation for this code: https://www.youtube.com/playlist?list=PLtHxIAAvyZZ5c1l_wrLK4AtJ1IZXWRXh7

% * BOOK * Your private tutoring, professional consulting and classes with Tutor Island's Instructors and Engineers:
%
% - Mail: contact.tutorisland [at] gmail [dot] com
% - Skype: live:.cid.9202df05ac502134
% - Zoom (Personal Meeting ID - PMI): 591 993 0978

%
%                    ****************************
%                    * SUPPORT * TUTOR ISLAND ! *
%                    ****************************
%
% - Become a Patron and gain access to exclusive content and
%   private one-to-one support: https://www.patreon.com/tutorisland
% - Via PayPal, donate to: contact.tutorisland [at] gmail [dot] com
% - sUBscRiBe: https://www.youtube.com/channel/UCKkzN06obaHk8mt3iBTp6qw?sub_confirmation=1
%

format long;

x0 = 0.1; % guess
tol = 10^-14; % tolerance
verbose = true; % show results on the screen

[sol n_iter] = nr(x0, @f, @df, tol, verbose); % 'sol' should be 2.0, for f(x) = x^2 - 4

% Homework:
%
% - Modify the functions 'f' and 'df' (accordingly), to find
%   zeros of different functions - you can find these mathematical functions in the same directory this project is.
% - Experiment with different values for guess and tolerance.
% - Implement max_iter guard (done).
% - Store the i-th value for xn, during iteration towards convergence and plot the x_i vs. iteration step, at the end.
% - Add option to display intermediate values during convergence.