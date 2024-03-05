# Add Homebrew's executable directory to the front of the PATH
export PATH=/usr/local/bin:$PATH

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/path/to/f-sy-h/F-Sy-H.plugin.zsh

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."
alias home="cd"
alias back="cd .."
alias python="python3 "
alias pip="pip3 "
alias l="ls --color -l -h"
alias sudo="sudo "
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias zshrc="cd ~/dotfiles; nvim .zshrc; source .zshrc; cd"
alias cd="z "
alias vim="nvim "
alias comfyuistart="python3 main.py --force-fp16"
alias treeall="tree -I '.git' -a ."

mkcd() {
  mkdir $1 && cd $_
}

c() {
  g++ $1.cpp -o $1 && ./$1
}

function p() {
  python3 "$1.py"
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ben_wang/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ben_wang/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ben_wang/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ben_wang/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

