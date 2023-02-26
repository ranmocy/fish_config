function fish_right_prompt -d "Write out the right prompt"
    set -l duration "$cmd_duration$CMD_DURATION"
    if test $duration -gt 100
        set duration (math $duration / 1000)s
    else
        set duration
    end

    if [ $last_status != 0 ]
        printf (set_color -o red)$last_status
    end
    printf (set_color -od green)$duration(set_color normal)
    printf (set_color -o blue)"("
    printf (set_color -o yellow)(date +"%H:%M:%S %b %d")
    printf (set_color -o blue)")─┘ "(set_color normal)
end
