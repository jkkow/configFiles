# Add porsonal symbolic link folder to PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Plugins to load
# oh-my-zsh plugins at "~/.oh-my-zsh/custom/plugins/"
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-z
	zsh-autosuggestions
	zsh-syntax-highlighting
	fzf
)

source $ZSH/oh-my-zsh.sh

# User configuration

FZF_BASE="$HOME/.fzf"

export PATH="$PATH:$HOME/.local/bin"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias fa="fzf --preview 'bat --color=always --style=numbers --line-range=:200 {}'"
alias cc="xclip -selection clipboard"
alias cpwd="pwd | cc"

alias lld="eza -lhD --icons"
alias llf="eza -lhf --icons"
alias lla="eza -lha --icons"
alias tree="eza -lh --icons --tree"

# init Starship
eval "$(starship init zsh)"
