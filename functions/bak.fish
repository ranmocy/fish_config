function bak
    if set -q $argv
        echo "USAGE: bak FILENAME"
        echo "This will cp FILENAME to FILENAME.bak"
        return 127
    end
    cp -i $argv[1] $argv[1].bak
end
