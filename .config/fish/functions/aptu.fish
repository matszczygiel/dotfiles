# Defined in - @ line 1
function aptu --wraps='sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean' --description 'alias aptu=sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean'
  sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean $argv;
end
