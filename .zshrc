source $HOME/.config/zsh/tmux.sh

# Variables
export ZSH=$HOME/.config/zsh/plugins/oh-my-zsh
DISABLE_AUTO_UPDATE=true
ZSH_CUSTOM=$HOME/.config/zsh/custom
ZSH_THEME="bard"

# History
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000 
ISWINDOWS=`uname -mrs | grep Microsoft | wc -l`
setopt inc_append_history # To save every command before it is executed 
setopt share_history # setopt inc_append_history

# Random Setup
git config --global push.default current
mkdir -p /tmp/log

# Aliases
alias vim="nvim"
cd(){ 
  builtin cd "$@"; 
  ls --color=auto; 
}

#OMZSH plugins to load
plugins=(
	nvm,
	git,
	docker
)

# Fix for arrow-key searching
source $HOME/.config/zsh/search.sh

# Source and load NVM on cd
source $HOME/.config/zsh/nvm.sh

source $ZSH/oh-my-zsh.sh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/keybindings.sh

