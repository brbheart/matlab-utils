function vid_list = loadVidList(path)
fid = fopen(path, 'r');
vid_list = textscan(fid, '%s');
fclose(fid);
vid_list = vid_list{1};
end