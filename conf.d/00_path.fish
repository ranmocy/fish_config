# PATH
if [ -x /opt/homebrew/bin/brew ]
    eval "$(/opt/homebrew/bin/brew shellenv)"
end
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.cargo/bin $PATH
set -gx PATH ~/.yarn/bin $PATH
set -gx PATH $PATH /Applications/WebStorm.app/Contents/MacOS
set -gx PATH $PATH '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
