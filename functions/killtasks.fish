function killtasks
    argparse 's/signal=' -- $argv
    or return

    if test (count $argv) -lt 1
        echo "USAGE: killtasks PROGRAM_NAME [-s SIGNAL]"
        return 127
    end

    set name $argv[1]
    set sig (set -q _flag_signal; and echo $_flag_signal; or echo 15)

    set pids (listtask $name | awk '{print $2}')
    if test -z "$pids"
        echo "No processes found matching '$name'"
        return 0
    end

    echo "Processes matching '$name':"
    listtask $name
    echo ""

    read -l -P "Kill these processes with signal $sig? [y/N] " confirm
    switch $confirm
        case Y y yes
            for pid in $pids
                kill -$sig $pid
            end
            echo "Sent signal $sig to: $pids"
        case '*'
            echo "Cancelled"
            return 1
    end
end
