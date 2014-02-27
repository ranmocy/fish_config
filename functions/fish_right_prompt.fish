function fish_right_prompt -d "Write out the right prompt"
    if [ $last_status != 0 ]
        printf (set_color -o red)$last_status
    end
    printf (set_color -o blue)"("
    printf (set_color yellow)(date +"%H:%M:%S %b %d")
    printf (set_color -o blue)")─┘ "(set_color normal)
end
