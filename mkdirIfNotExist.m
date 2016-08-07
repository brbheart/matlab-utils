function mkdirIfNotExist(dir)
if ~isdir(dir)
    mkdir(dir);
end
end