# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

# Prompt
parse_git_branch() {
	git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) / ' | tr '[:lower:]' '[:upper:]'
}
export PS1=" \e[0;36m\W\e[0m \[\e[91m\]\$(parse_git_branch)\e[0;36m>> \e[0m "
export PS1=" \e[0;36m\W\e[0m \[\e[91m\]\$(parse_git_branch)\e[0;36m🌧️\e[0m "

# Aliases
alias nv='nvim'
alias l='ls -a'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Neovim Configs
alias nvc='NVIM_APPNAME=nvChad nvim'

# Java Compilation command
alias javcomp='javac -d . ../src/*'
