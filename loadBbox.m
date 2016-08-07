function bbox = loadBbox(path)
fid = fopen(path, 'r');
bbox = textscan(fid, '%s');
fclose(fid);
bbox = bbox{1};
end