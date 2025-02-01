# PATH
eval "$(/usr/libexec/path_helper -c)"

if [ -x /opt/homebrew/bin/brew ]
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

set -gx PATH \
    $HOME/bin \
    $HOME/.oh-my-configs/bin \
    $HOME/.local/bin \
    $HOME/.cargo/bin \
    $HOME/.yarn/bin \
    $HOME/.cache/lm-studio/bin \
    $PATH

# Path Alias
abbr --add ~code ~/Code
