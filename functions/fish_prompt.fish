#!/usr/local/fish

# fish git prompt
set -g __fish_git_prompt_showdirtystate 1
# set -g __fish_git_prompt_showstashstate 1
set -g __fish_git_prompt_showuntrackedfiles 1
set -g __fish_git_prompt_showupstream informative
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_use_informative_chars 1
set -g __fish_git_prompt_color_bare yellow
set -g __fish_git_prompt_color_merging yellow
set -g __fish_git_prompt_color_branch yellow
set -g __fish_git_prompt_color_flags yellow
set -g __fish_git_prompt_color_upstream yellow

# Status Chars
set -g __fish_git_prompt_char_cleanstate        '✔'
set -g __fish_git_prompt_char_dirtystate        '●'
set -g __fish_git_prompt_char_invalidstate      '✖'
set -g __fish_git_prompt_char_stagedstate       '✚'
set -g __fish_git_prompt_char_stashstate        '↩'
set -g __fish_git_prompt_char_stateseparator    ' '
set -g __fish_git_prompt_char_untrackedfiles    '…'
set -g __fish_git_prompt_char_upstream_ahead    '↑'
set -g __fish_git_prompt_char_upstream_behind   '↓'
set -g __fish_git_prompt_char_upstream_diverged '↕'
set -g __fish_git_prompt_char_upstream_equal    ''

function string_length
    echo $argv[1] | wc -c
end

function fish_prompt
    set -g last_status $status # save for next and right prompt

    # first line
    if type -q node; then
        set -l prompt_node (node --version | cut -d' ' -f1,2)
        set -l prompt_node "($prompt_node)"
    else
        set -l promot_node ""
    end
    set -l upper_left (set_color -o blue)"┌─("(set_color yellow)(prompt_pwd)(set_color -o blue)")"(set_color normal)(set_color yellow)"$prompt_node"(set_color -o blue)
    set -l upper_left_length (math (string_length (prompt_pwd))+(string_length $prompt_node)+3)
    set -l upper_right (set_color -o blue)"("(set_color normal)(set_color blue)(whoami)(set_color -o black)"@"(set_color -o green)(hostname|cut -d . -f 1)(set_color -o blue)")─┐\n"
    set -l upper_right_length (math (string_length (whoami))+(string_length (hostname|cut -d . -f 1))+4)

    printf $upper_left
    for i in (seq (math $COLUMNS-$upper_left_length-$upper_right_length-1))
        printf "─"
    end
    printf $upper_right

    # second line
    set -l prompt_moe ([ $last_status = 0 ];and printf "(～￣▽￣)～";or printf "¯\_(ツ)_/¯")
    printf (set_color -o blue)"└─("(set_color -o green)"%s"(set_color -o blue)")─$prompt_moe>"(set_color normal) (__fish_git_prompt "%s")
end
