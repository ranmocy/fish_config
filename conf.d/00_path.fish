# PATH
if [ -x /opt/homebrew/bin/brew ]
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

set -gx PATH $HOME/bin $HOME/.oh-my-configs/bin $PATH

set -gx PATH $PATH $HOME/.local/bin
set -gx PATH $PATH $HOME/.cargo/bin
set -gx PATH $PATH $HOME/.yarn/bin
set -gx PATH $PATH $HOME/Library/Python/3.9/bin
set -gx PATH $PATH /Applications/WebStorm.app/Contents/MacOS
set -gx PATH $PATH '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
set -gx PATH $PATH $HOME/.cache/lm-studio/bin
