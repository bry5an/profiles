# Load the default .profile
#[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load RVM into a shell session *as a function*
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Terminal prompt
# export PS1="\u@\W $ "  

PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

# Path for GO lang
export PATH
export GOPATH=$HOME/git/go
export PATH=$PATH:$GOPATH/bin
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# Vault server
export VAULT_ADDR=http://172.31.32.11:8200

# Git push for the lazy
commitMessage=("refactored code" "code clean-up" "merged functions" "removed trailing bracket" "added cool features")
selectMessage=${commitMessage[$RANDOM % ${#commitMessage[*]} ]}
function yologit() {
    git add .
    git commit -m "$selectMessage"
    git push
}

# CD for the lazy
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Trigger ~/.bashrc commands
. ~/.bashrc

