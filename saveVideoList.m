% funciton: get list of folders
% videopath: the path where video folders locate in. eg. vid001, vid002 ...,
% just folders, not vid001.avi, vid002.avi ...
% txtpath: save the names of video folders.
function saveVideoList(videopath, txtpath)
file = fopen(txtpath, 'w');
videolist = dir(videopath);
isub = [videolist(:).isdir];
videolist = {videolist(isub).name}';
videolist(ismember(videolist, {'.', '..'})) = [];
for i = 1:length(videolist)
    %sprintf('%g\n', videolist{i});
    fprintf(file, '%s\n', videolist{i});
end
fclose(file);
end