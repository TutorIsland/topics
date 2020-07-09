function [sol n_iter] = nr(guess, f, df, tol)
  % finds the zero for the mathematical function f
  % starting at guess, with tolerance tol

  xn = guess; % first iteration
  n_iter = 0; % number of iterations needed to find the zero

  % TODO also add a termination after n_max iterations with failure message
  while(abs(f(xn)) > tol)
    next = next_nr(xn) % TODO suppress output for production
    xn = next;
    n_iter = n_iter + 1;
  end

  sol = xn; % solution found

end

function [next] = next_nr(xn, f, df)
  % returns next value of x, after one iteration of the algorithm
  next = xn - f(xn)/df(xn);
end
