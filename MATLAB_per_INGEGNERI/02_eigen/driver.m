A = magic(3);

% determinante di A
det_A = det(A);

% inversa di A
inv_A = inv(A);
% test
test_id = inv_A * A;

% autovalori ed autovettori ( A * v = lambda * v )
[autovettori autovalori] = eig(A)
% test: controllare che A*autovettori(:,1) = autovalori(1,1)*autovettori(:,1)