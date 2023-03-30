# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo web-search copyfile copybuffer dirhistory jsontools macos z zsh-256color 
autoupdate virtualenv)
export UPDATE_ZSH_DAYS=2
ZSH_CUSTOM_AUTOUPDATE_QUIET=true
# colored-man-pages
source $ZSH/oh-my-zsh.sh
MANPATH="/usr/local/man:/usr/share/man:/usr/local/share/man:/opt/local/share/man"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export PAGER="/usr/bin/less -is"

export PS1="Hello User! "
echo ']2;Ultimate Unix Terminal!'
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$HOME/.nodebrew/current/bin:$PATH
cd ~
. /usr/local/opt/asdf/libexec/asdf.sh
if type brew &>/dev/null
then
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

    autoload -Uz compinit
    compinit
fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
vsman() {
tempfile=$(mktemp)
man $1 | col -b > $tempfile && open -tf $tempfile &
}
nman() {
mytemp=$(mktemp)
man $1 | col -b > $mytemp && nvim $mytemp
}
export PATH=$PATH:/Users/Shared/Previously\ Relocated\ Items/Security/usr/local/bin
export EDITOR="neovide"
export VISUAL="$EDITOR"
export MANPAGER="/usr/bin/less -is"
bindkey ^] forward-word
alias list="ls -lart"
alias m2u="tr '\015' '\012'"
alias u2m="tr '\012' '\015'"
alias c#="csharp"
alias python="python3.11"
alias pythondebug="python2.7"
alias brew-magic="brew update; brew upgrade"
alias glog="git log --all --graph --decorate"
alias gsm="git checkout $(git_main_branch)"
alias gcm="git commit -m "
alias f3="killall Dock"
alias p="pushd"
alias po="popd"
alias sudoedit="sudo -e "
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/bison/lib"
alias ve="virtualenv"
eval "$(rbenv init - zsh)"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source "$HOME/.cargo/env"
export PATH=/usr/local/anaconda3/bin:$PATH
export PATH=/usr/local/anaconda3/condabin:$PATH
eval "$(pyenv init -)"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=245,bold"
export KEYTIMEOUT=4
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"
alias xdg-open="open"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



#NOTES
# btw i did this: defaults write com.apple.desktopservices DSDontWriteNetworkStores true
#to change it back, run cmd again with false
#------------------
#nix install info is located in the nix_install file in ~/Documents

