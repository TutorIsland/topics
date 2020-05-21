% driver for the Fourier Series expansion of given exercise

close all;
clear all;

fh = figure(1);
set(fh, 'color', 'y');

colors = ['w', 'r', 'g', 'c', 'b', 'm', 'w', 'c', 'b', 'r', 'g', 'c'];

n_max = 3; % increase here to see more curves

% chosen_colors = cell(n_max, 1);
% chosen_colors{1:n_max} = colors(1:n_max);
plot_names = cell(n_max, 1);
for n = 1 : n_max
  [x, y] = fourier_series_step(n);
  plot(x, y, colors(n), 'linewidth', 3);
  plot_names{n} = sprintf('n: %d', n);
  hold on;
end

% legend('n: 1', 'n: 2', 'n: 3', 'n: 4', 'n: 5', 'n: 6');
h = legend(plot_names, 'color', 'b', 'textcolor', 'w', 'fontsize', 26, 'fontname', 'arial', 'fontweight', 'bold', 'location', 'southeast');
% set(h, 'fontsize', 7);

set(gca, 'color', 'black'); % set background color for the plot

grid on;
set(gca, 'xtick', [-3.14, 0, 3.14], 'linewidth', 3, 'fontsize', 16);
set(gca, 'ytick', [0.0, 0.5, 1.0], 'fontsize', 16);
% xlabel('x', 'color', 'b', 'fontsize', 20);
% ylabel('y', 'color', 'b', 'fontsize', 20);
title('Fourier series - step function', 'color', 'b', 'fontsize', 40);
set(gca, 'gridcolor', [0.7, 0.7, 0.7], 'gridalpha', 0.3);
set(gca, 'fontname', 'impact');
set(gcf, 'inverthardcopy', 'off'); % don't change colors on saved image file
print('fourier_step', '-dpng'); % save plot to image file