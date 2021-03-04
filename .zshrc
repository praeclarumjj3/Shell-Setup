export TERM="xterm-256color" # This sets up colors properly
export SHELL=/usr/bin/zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

DISABLE_MAGIC_FUNCTIONS=true
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Path to your oh-my-zsh installation.
export ZSH="/home/jj/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

############ POWERLEVEL THEME SETTINGS ##############
POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs nvm)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(disk_usage time)

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHOW_RULER=true
POWERLEVEL9K_RULER_CHAR='─'
POWERLEVEL9K_RULER_BACKGROUND=none
POWERLEVEL9K_RULER_FOREGROUND=237

POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_SEGMENT_END_SEPARATOR=
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=
POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"

POWERLEVEL9K_DIR_SHOW_WRITABLE=true

POWERLEVEL9K_DISK_USAGE_NORMAL_BACKGROUND=none
POWERLEVEL9K_DISK_USAGE_WARNING_BACKGROUND=magenta
POWERLEVEL9K_DISK_USAGE_CRITICAL_BACKGROUND=red
POWERLEVEL9K_TIME_BACKGROUND=none
POWERLEVEL9K_TIME_FOREGROUND=white

POWERLEVEL9K_DIR_HOME_BACKGROUND=none
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=none
POWERLEVEL9K_DIR_ETC_BACKGROUND=none
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=none
POWERLEVEL9K_DIR_NOT_WRITABLE_BACKGROUND=none

POWERLEVEL9K_DIR_HOME_FOREGROUND=blue
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=blue
POWERLEVEL9K_DIR_ETC_FOREGROUND=blue
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=blue
POWERLEVEL9K_DIR_NOT_WRITABLE_FOREGROUND=red

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"

POWERLEVEL9K_VCS_GIT_ICON='%fon %F{040}\uf1d3 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='%fon %F{040}\uf09b '
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON='%fon %F{040}\uf171 '
POWERLEVEL9K_VCS_GIT_GIT_GITLAB_ICON='%fon %F{040}\uf296 '

POWERLEVEL9K_VCS_CLEAN_BACKGROUND=none
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=none
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=none
POWERLEVEL9K_VCS_LOADING_BACKGROUND=none
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="040"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="red"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
POWERLEVEL9K_VCS_LOADING_FOREGROUND="grey"

POWERLEVEL9K_VCS_UNTRACKED_ICON=$'%{\b?%}'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'%{\b!%}'
POWERLEVEL9K_VCS_STAGED_ICON=$'%{\b+%}'

POWERLEVEL9K_DIR_NOT_WRITABLE_VISUAL_IDENTIFIER_COLOR=red
POWERLEVEL9K_LOCK_ICON=$'\uf023'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
# Prompt symbol: '❮' when vicmd keymap is active, '❯` otherwise; red on error, green on success.
local p='%F{%(?.green.red)}${${${KEYMAP:-0}:#vicmd}:+❯}${${$((!${#${KEYMAP:-0}:#vicmd})):#0}:+❮}%f '
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="$p"

POWERLEVEL9K_NVM_BACKGROUND=none
POWERLEVEL9K_NVM_FOREGROUND=green
POWERLEVEL9K_NODE_ICON='%fvia %F{green}⬢'

############ END- POWERLEVEL THEME SETTINGS ##############

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
	pip
	vagrant
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    dnf)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias zshconf="vim ~/.zshrc"
    alias ohmyzsh="vim ~/.oh-my-zsh"
    alias grm="git rebase master"
    alias grc="git rebase --continue"
    alias gra="git rebase --abort"
    alias grs="git rebase --skip"
    alias gpo="git push origin"
    alias gpl="ggpull"
    alias gps="ggpush"
    alias gplo="git pull origin"
    alias gs="git stash"
    alias gsa="git stash apply"
    alias vi="vim"
    alias dps="docker ps"
    alias dk="docker kill"
    alias dpsa="docker ps -a"
    alias dipa="dipa"
    alias drm="docker rm"
    alias jh="jhipster"
    alias cl="clear"
    alias open="google-chrome"
    alias fopen="xdg-open"
    alias openshi01="ssh jj@shi-01.cs.uoregon.edu" 
    alias openshi03="ssh jj@shi-03.cs.uoregon.edu"
    alias openshi05="ssh jj@shi-05.cs.uoregon.edu"  
    alias openxp="ssh jj@finity.d.cs.uoregon.edu" 
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=/home/jj/flutter/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jj/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jj/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jj/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jj/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
alias argouml="java -jar /home/jj/Desktop/2-1/OOAD/argouml-VERSION_0_35_1/src/argouml-build/build/argouml.jar"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools

function shi01local {
  port=$1 
  remote_username=jj
  remote_hostname=shi-01.cs.uoregon.edu  
  url="http://localhost:$port" 
  echo "Opening $url" 
  open "$url"
  cmd="ssh -CNL localhost:"$port":localhost:"$port" $remote_username@$remote_hostname" 
  echo "Running '$cmd'"
  eval "$cmd"
}

function shi03local {
  port=$1 
  remote_username=jj
  remote_hostname=shi-03.cs.uoregon.edu  
  url="http://localhost:$port" 
  echo "Opening $url" 
  open "$url"
  cmd="ssh -CNL localhost:"$port":localhost:"$port" $remote_username@$remote_hostname" 
  echo "Running '$cmd'"
  eval "$cmd"
}

function shi05local {
  port=$1 
  remote_username=jj
  remote_hostname=shi-05.cs.uoregon.edu  
  url="http://localhost:$port" 
  echo "Opening $url" 
  open "$url"
  cmd="ssh -CNL localhost:"$port":localhost:"$port" $remote_username@$remote_hostname" 
  echo "Running '$cmd'"
  eval "$cmd"
}

function xplocal {
  port=$1 
  remote_username=jj
  remote_hostname=finity.d.cs.uoregon.edu  
  url="http://localhost:$port" 
  echo "Opening $url" 
  open "$url"
  cmd="ssh -CNL localhost:"$port":localhost:"$port" $remote_username@$remote_hostname" 
  echo "Running '$cmd'"
  eval "$cmd"
}
