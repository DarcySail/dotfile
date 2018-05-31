# Setup fzf
# ---------
if [[ ! "$PATH" == */home/darcy/.fzf/bin* ]]; then
  export PATH="$PATH:/home/darcy/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/darcy/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/darcy/.fzf/shell/key-bindings.zsh"

