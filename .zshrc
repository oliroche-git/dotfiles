# Set PATH, preferentially use local binaries and then system binaries
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Alias definitions for convenience and efficiency
#alias ll='ls -lF'
#alias la='ls -lAh'
#alias l='ls -CF'
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -la"

# Color setup for ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    # Enable colors for grep via aliases
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# History behavior
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt appendhistory # Append history instead of overwriting it
setopt hist_expire_dups_first # Delete duplicates first when HISTFILE is too big.
setopt share_history # Share history across sessions.

# Autocomplete setup
autoload -Uz compinit
compinit

# Correct minor spelling errors in commands
setopt correct

# Enable command auto-completion
autoload -U compinit && compinit

# Use vim as the default editor
export EDITOR='vim'

# Setting for the new UTF-8 terminal support in screen
#export LANG=en_US.UTF-8
#export LC_ALL=en_US.UTF-8
export LANG="fr_FR.UTF-8"
export LC_ALL="fr_FR.UTF-8"

# Load NVM, Node Version Manager (if you use it, otherwise remove these lines)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(starship init zsh)"
clear
neofetch

# Custom prompt (optional)
# PS1='[%n@%m %c]$ '

# Enable syntax highlighting if installed (remove if not needed)
# if [ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
#    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#    ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/share/zsh-syntax-highlighting/highlighters
# fi

# Custom functions (optional)
# Example: function mkcd() { mkdir -p "$@" && cd "$_"; }
