function listtask
    if set -q $argv
        echo "USAGE: listtask PROGRAM_NAME"
        return 127
    end

    ps aux | grep -v grep | grep -i $argv[1]
end
