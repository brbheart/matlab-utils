%shape: n*2, n--number of landmark points
function saveShape(path, shape)
% function: save shape
file = fopen(path, 'w');
np = size(shape, 1);
fprintf(file, 'version: 2 \nn_points: %d \n{ \n', np);
fprintf(file, '%g %g\n', shape');
fprintf(file, '}');
fclose(file);
end