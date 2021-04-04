function [sol n_iter] = nr(guess, f, df, tol, verbose)
  % finds the zero for the mathematical function f
  % starting at guess, with tolerance tol

  xn = guess; % first iteration
  n_iter = 0; % number of iterations needed to find the zero
  max_iter = 300; % number of maximum iterations

  while (abs(f(xn)) > tol && n_iter < max_iter)
    next = next_nr(xn) % TODO suppress output for production
    xn = next;
    n_iter = n_iter + 1;
  end

  sol = xn; % solution found

  % check whether number of maximum iterations has been reached
  if (n_iter >= max_iter)
    % error('number of maximum iterations reached - CHECK SOLUTION!');
    % can also be implemented as a non-terminating message (a 'warning'), if desired:
    warning('number of maximum iterations reached - CHECK SOLUTION!');
  end
  if (verbose)
    output_message = ['Solution found: x = ' num2str(sol) ', starting from: ' num2str(guess) ', with precision: ' num2str(tol) ', after: ' num2str(n_iter) ' iterations.'];
    disp(output_message);
  end

end

function [next] = next_nr(xn, f, df)
  % returns next value of x, after one iteration of the algorithm
  next = xn - f(xn)/df(xn);
end
