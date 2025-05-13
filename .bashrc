# .bashrc

############
# General
############

echo "Hello Toby!"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

############
# Prompt
############
parse_git_branch() {
	git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) / ' | tr '[:lower:]' '[:upper:]'
}
# export PS1=" \e[0;36m\W\e[0m \[\e[91m\]\$(parse_git_branch)\e[0;36m>> \e[0m "
export PS1="\n \e[0;36m\w\e[0m \[\e[91m\]\$(parse_git_branch)🌧️  \n\e[95m 󰅂\e[0m "
# export PS1=" \e[0;36m\w\e[0m \[\e[91m\]\$(parse_git_branch)\e[0;36m🌧️\e[0m \n 󰅂 "
#

############
# Aliases
############
alias nv='nvim'
alias l='ls -a'
alias ls='ls --color=auto'

alias :q='exit'
alias :wqa='exit'

############
#FZF stuff
############
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
#Bind alt-d instead of alt c
# bind -m emacs-standard '"\ed": " \C-b\C-k \C-u`__fzf_cd__`\e\C-e\er\C-m\C-y\C-h\e \C-y\ey\C-x\C-x\C-d"'
bind '"\ed": "\ec"'

# Add this to your .bashrc
cdf() {
  local file
  file=$(find . -type f -not -path "./.git/*" 2>/dev/null | fzf)
  if [ -n "$file" ]; then
    cd "$(dirname "$file")" || return
    echo "Changed directory to $(pwd)"
  else
    echo "No file selected"
  fi
}

bind '"\C-f": "cdf\n"'


############
# Android
############
export PATH=$PATH:~/Android/Sdk/platform-tools

