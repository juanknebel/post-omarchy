# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

# Basic settings
setopt AUTO_CD
setopt CORRECT
setopt EXTENDED_GLOB
setopt NO_BEEP

# Completion
autoload -U compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Load plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null || \
    source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null || \
    source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# Custom prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'
setopt PROMPT_SUBST
PROMPT='%F{blue}%n@%m%f %F{green}%~%f %F{red}${vcs_info_msg_0_}%f %# '

# Useful aliases
alias ls='eza --icons --group-directories-first --color=auto'
alias ll='eza -l --icons --group-directories-first --color=auto'
alias la='eza -a --icons --group-directories-first --color=auto'
alias lla='eza -la --icons --group-directories-first --color=auto'
alias lt='eza -T --icons --group-directories-first --color=auto'

# Function to create a directory and enter it
function mkd() {
    mkdir -p "$1" && cd "$1" || return
}

# FZF configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--color=fg:#c0caf5,bg:#1a1b26,hl:#7aa2f7 --color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff --color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff --color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a --height 40% --layout=reverse --border --margin=1 --padding=1'

# Add directories to PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"


# Editor settings
export EDITOR='nvim'
export VISUAL='nvim'

# Language settings
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Zoxide
eval "$(zoxide init zsh)"

# Atuin
eval "$(atuin init zsh)"

# Initialize Starship if installed
# if command -v starship &> /dev/null; then
#     eval "$(starship init zsh)"
# fi

bindkey '^[[1;5C' forward-word    # Ctrl + Right Arrow
bindkey '^[[1;5D' backward-word   # Ctrl + Left Arrow

# Mise
eval "$(mise activate zsh)"
