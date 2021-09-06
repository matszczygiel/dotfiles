function readrpath --description 'Read rpath or runpath of ELF file'
readelf -d $argv[1] | rg "RPATH|RUNPATH"
end
