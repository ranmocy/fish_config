#!/usr/local/fish

# easy colors
set color_yellow (set_color -o yellow)
set color_lyellow (set_color normal)(set_color yellow)
set color_red (set_color -o red)
set color_green (set_color -o green)
set color_blue (set_color -o blue)
set color_lblue (set_color normal)(set_color blue)
set color_grey (set_color -o black)
set color_normal (set_color normal)

# fish git prompt
set __fish_git_prompt_showdirtystate "yes"
set __fish_git_prompt_showstashstate "yes"
set __fish_git_prompt_showuntrackedfiles "yes"
set __fish_git_prompt_show_informative_status "yes"
set __fish_git_prompt_showcolorhints "yes"
set __fish_git_prompt_color_bare yellow
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_flags yellow
set __fish_git_prompt_color_upstream yellow

# Status Chars
set __fish_git_prompt_char_cleanstate        '✔'
set __fish_git_prompt_char_dirtystate        '●'
set __fish_git_prompt_char_invalidstate      '✖'
set __fish_git_prompt_char_stagedstate       '✚'
set __fish_git_prompt_char_stashstate        '↩'
set __fish_git_prompt_char_stateseparator    ' '
set __fish_git_prompt_char_untrackedfiles    '…'
set __fish_git_prompt_char_upstream_ahead    '↑'
set __fish_git_prompt_char_upstream_behind   '↓'
set __fish_git_prompt_char_upstream_diverged '↕'
set __fish_git_prompt_char_upstream_equal    ''

function string_length
    echo $argv[1] | wc -c
end

function fish_prompt
    set -g last_status $status # save for next and right prompt

    # first line
    set -l prompt_ruby (ruby --version | cut -d' ' -f1,2)
    set -l upper_left "$color_blue┌─($color_yellow"(prompt_pwd)"$color_blue)$color_lyellow($prompt_ruby)$color_blue"
    set -l upper_left_length (math (string_length (prompt_pwd))+(string_length $prompt_ruby)+3)
    set -l upper_right "$color_blue($color_lblue"(whoami)"$color_grey@$color_green"(hostname|cut -d . -f 1)"$color_blue)─┐\n"
    set -l upper_right_length (math (string_length (whoami))+(string_length (hostname|cut -d . -f 1))+4)

    printf $upper_left
    for i in (seq (math $COLUMNS-$upper_left_length-$upper_right_length-1))
        printf "─"
    end
    printf $upper_right

    # second line
    set -l prompt_moe ([ $last_status = 0 ];and printf "(～￣▽￣)～";or printf "(╯‵□′)╯┻━┻ ")
    printf "$color_blue└─(%s$color_blue)─$prompt_moe>$normal" (__fish_git_prompt "%s")
end
