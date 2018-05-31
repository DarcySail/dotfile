# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/darcy/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"
#ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, autojump)

#source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#================================================================
#This is my own edit, you can delete it when you don't apply the change.

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/nvvm/lib64


#powerline的配置
source $ZSH/oh-my-zsh.sh
. /usr/local/lib/python3.5/dist-packages/powerline/bindings/zsh/powerline.zsh

#为了让fzf正常运行于vi模式下，下面几条命令的顺序不能乱
bindkey -v
#这是为了取消esc键的延迟
export KEYTIMEOUT=1
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.fzf/shell/zsh-interactive-cd.plugin.zsh
#bind Space:magic-space
#为了能在vim中使用ctrl + s保存文件
#stty stop ''
#================================================================
#for tilix
if [[ $TILIX_ID ]]; then
        source /etc/profile.d/vte-2.91.sh
fi
#================================================================

alias -s html='vim'   # 在命令行直接输入后缀为 html 的文件名，会在 Vim 中打开
alias -s rb='vim'     # 在命令行直接输入 ruby 文件，会在 Vim 中打开
alias -s py='vim'      # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js='vim'
alias -s c='vim'
alias -s java='vim'
alias -s txt='vim'
alias -s gz='tar -xzvf' # 在命令行直接输入后缀为 gz 的文件名，会自动解压打开
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias install='sudo apt-get install'
alias how='tldr'
alias hwo='tldr'
alias mon='gnome-system-monitor'
alias cl='xsel -b'
alias gpu_change='source ~/workstation/tensorflow_gpu/bin/activate'
alias cpu_change='source ~/workstation/tensorflow_cpu/bin/activate'
alias nethogs='expect ~/software/script2run/nethogs.expect'
alias bat='cat  /sys/class/power_supply/BAT0/capacity'
alias getip='echo $sword | xsel -b'
#消除提示信息
alias gdb="gdb -q"
alias cuda-gdb="cuda-gdb -q"
#在拷贝时显示进度
alias cp="rsync -ah --progress"
alias tmux="TERM=screen-256color tmux"
alias iotop="sudo iotop"
alias agl='ag --pager="less -XFR"'
alias dmesg='dmesg --color=always'
#alias ls='ls --color'
alias tree='tree -C'
alias xrd='evince'
alias powertop='sudo powertop --auto-tune'
alias vimt='vim ~/Documents/thought.txt'
alias todo='vim ~/Documents/todo.txt'
alias blog='cd ~/Documents/blog/darcysail.github.io'
alias ze='vim ~/.zshrc'
alias zs='source ~/.zshrc'
alias ve='vim ~/.vimrc'
alias aptup='sudo apt update && sudo apt upgrade -y'
alias vim='nvim'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

alias psg='ps -ef|ag '

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'

#================================================================================
# Use Git’s colored diff when available
hash git &>/dev/null;
if [ $? -eq 0 ]; then
	function diff() {
		git diff --no-index --color-words "$@";
	}
fi;

# Start an HTTP server from a directory, optionally specifying the port
#function server() {
#	local port="${1:-8000}";
#	sleep 1 && open "http://localhost:${port}/" &
#	# Set the default Content-Type to `text/plain` instead of `application/octet-stream`
#	# And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
#	python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port";

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

function cd () {
    builtin cd "$@" && ls
}

alias doc='cd ~/Documents'
alias -- -="cd -"
#================================================================================
# DETECT WHICH `LS` FLAVOR IS IN USE
#IF LS --COLOR > /DEV/NULL 2>&1; THEN # GNU `LS`
#	COLORFLAG="--COLOR"
#	EXPORT LS_COLORS='NO=00:FI=00:DI=01;31:LN=01;36:PI=40;33:SO=01;35:DO=01;35:BD=40;33;01:CD=40;33;01:OR=40;31;01:EX=01;32:*.TAR=01;31:*.TGZ=01;31:*.ARJ=01;31:*.TAZ=01;31:*.LZH=01;31:*.ZIP=01;31:*.Z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

## Case-insensitive globbing (used in pathname expansion)
#shopt -s nocaseglob;
#
## Append to the Bash history file, rather than overwriting it
#shopt -s histappend;
#
## Autocorrect typos in path names when using `cd`
#shopt -s cdspell;
#
## Enable some Bash 4 features when possible:
## * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
## * Recursive globbing, e.g. `echo **/*.txt`
#for option in autocd globstar; do
#	shopt -s "$option" 2> /dev/null;
#done;
#
## Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

#================================================================================


export PYTHONPATH=$env:"/opt/movidius/caffe/python":$PYTHONPATH
export LESS=-Xr
#================================================================================
bindkey -v                                          # Use vi key bindings
bindkey '^r' history-incremental-search-backward    # [Ctrl-r] - Search backward incrementally for a specified string. The string may begin with ^ to anchor the search to the beginning of the line.

# emacs style
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
#================================================================================
autoload -U zmv
#================================================================================
#export TERM=screen-256color
alias tmux="TERM=screen-256color tmux"
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux
fi
