function ls --description 'List contents of directory'
    set -l param -hf --color=auto
    if isatty 1
        set param $param --indicator-style=classify
    end
    command ls $param $argv
end