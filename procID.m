% function: Returns a string identifying the process.
function ID = procID()

dir = pwd();
sep_indx = strfind(dir, filesep);
dir = dir(sep_indx(end)+1:end);
ID = dir;