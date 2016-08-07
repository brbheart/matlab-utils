function saveBbox(path, bbox)
% function: load shape from pts file
file = fopen(path, 'w');
fprintf(file, '%g ', bbox);
fclose(file);
end