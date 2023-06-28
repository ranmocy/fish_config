# PATH
if [ -x /opt/homebrew/bin/brew ]
    eval "$(/opt/homebrew/bin/brew shellenv)"
end
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.cargo/bin $PATH
set -gx PATH ~/.foundry/bin $PATH
set -gx PATH ~/.yarn/bin $PATH
set -gx PATH ~/.narya/bin $PATH
set -gx PATH /Applications/WebStorm.app/Contents/MacOS $PATH
