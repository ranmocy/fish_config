function listport
    if set -q $argv
        echo "USAGE: listport PORT"
        return 127
    end

    lsof -i :$argv[1]
end
