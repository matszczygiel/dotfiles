# Defined in - @ line 1
function apti --wraps='sudo apt install' --description 'alias apti=sudo apt install'
  sudo apt install $argv;
end
