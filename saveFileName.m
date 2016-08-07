%function: save the file names with identical suffix in the folder.
function file_name = saveFileName(file_dir, suffix)
dir_output = dir([file_dir, suffix]);
file_name = {dir_output.name}';
end