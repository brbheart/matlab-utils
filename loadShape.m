% input: the path of shape txt
function shape = loadShape(path)
fid = fopen(path, 'r');
shape = textscan(fid, '%f %f', 'HeaderLines', 3, 'CollectOutput', 2);
fclose(fid);
shape = shape{1};
end