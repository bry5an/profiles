
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PS1="\u@\W $ "  
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export GOPATH=$HOME/Code/go
export PATH=$PATH:$GOPATH/bin
if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi
alias keys="cd ~/Code/aws_keys && ls"

commitMessage=("refactored code" "code clean-up" "merged functions" "removed trailing bracket" "added cool features")
selectMessage=${commitMessage[$RANDOM % ${#commitMessage[*]} ]}
function yologit() {
    git add .
    git commit -m "$selectMessage"
    git push
}

alias nugetpush='ssh -i $HOME/Code/aws_keys/pipeline.pem ubuntu@172.31.24.234 rm -rf "/home/ubuntu/jenkins_data/workspace/wf-nuget-drop/*"; rsync -Pav -e "ssh -i $HOME/Code/aws_keys/pipeline.pem" $HOME/Downloads/*.nupkg ubuntu@172.31.24.234:/home/ubuntu/jenkins_data/workspace/wf-nuget-drop'

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
