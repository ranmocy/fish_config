function listkill
    if set -q $argv
        echo "USAGE: listkill PROGRAM_NAME [SIGNAL]"
        return 127
    end

    if [ (count $argv) -lt 2 ]
        set sig 3
    else
        set sig $argv[2]
    end

    echo "kill $argv[1] with signal $sig."
    listtask $argv[1] | awk '{print $2}' | xargs kill -$sig
end
