# Some better coloring and text display at prompt
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
if [ "$SSH_CONNECTION" ]; then 
  PS1="\u@\h:\w"
else
  PS1="\[\e[31m\]\u\[\e[m\]:\[\e[32m\]\w\[\e[m\]\[\e[33m\]\$(__git_ps1)\[\e[m\]$ "
fi

# Add color to LS output
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# more detailed ls responses by default
alias ls='ls -aGFh'

# Homebrew's requested API token
export HOMEBREW_GITHUB_API_TOKEN=6d38db811a3f9d8e5275a85600639f5be2f57672

# In case I want to always use my local chef repo for creating vagrant instances
export TRIPPING_VAGRANT_CHEF_REPO_PATH=/Users/markus/sites/chef

# Add the homebrew path
export PATH=/usr/local/Homebrew/bin:/usr/local/bin:$PATH

# Get chruby working
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh


# Add SSH-Agent (makes it so I don't have to authenticate each SSH connection)
eval $(ssh-agent)
ssh-add -A

# Useful crap
alias reload_profile=". ~/.bash_profile"
alias restart_cam="sudo killall VDCAssistant"
alias flush_dns_cache="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Voxophone Shortcuts
export TRIPPING_USER="markus"
export PATH=$PATH:~/imageoptim-cli/bin
alias cdv="cd ~/sites/voxophone"

# Woo fun path stuff
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:~/path:~/bin
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH" #gnu functions take precedence

# Where to get manuals from
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

