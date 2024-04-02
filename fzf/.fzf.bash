# Setup fzf
# ---------
if [[ ! "$PATH" == */home/toby/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/toby/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/toby/.fzf/shell/completion.bash"

# Key bindings
# ------------
source "/home/toby/.fzf/shell/key-bindings.bash"
