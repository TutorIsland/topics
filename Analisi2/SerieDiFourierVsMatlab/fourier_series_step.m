% computes the Fourier Series up to n terms
function [x, y] = fourier_series_step(n)
  tol = 0.01;
  x = linspace(-pi + tol, +pi - tol, 300);
  summation = zeros(1, length(x));

  for k = 0 : n
    summation = summation .+ ( sin( (2*k+1)*x ) ./ (2*k+1) );
  end

  y = 1./2. + (2./pi).*summation;
end
