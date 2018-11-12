# Path to your oh-my-zsh installation.
  export ZSH=/Users/remy.j/.oh-my-zsh
export TERM="xterm-256color"

DEFAULT_USER="remy.j"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="╰─> "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time status dir vcs background_jobs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)


plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration


alias glance='docker run -v /var/run/docker.sock:/var/run/docker.sock:ro --pid host -it docker.io/nicolargo/glances'
alias swagger='docker run -p 80:8080 swaggerapi/swagger-editor'

#Alias docker
alias dls='docker ps -a'
alias dlsi='docker images'
#Remove all container
alias drm='docker rm `docker ps -aq`'
alias drmi='docker rmi $(docker images -q)'
alias standup= 'cd /home/pouzor/Sites && git standup -m 2 -d 2 && cd -'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pouzor/Téléchargements/google-cloud-sdk/path.zsh.inc' ]; then source '/home/pouzor/Téléchargements/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pouzor/Téléchargements/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/pouzor/Téléchargements/google-cloud-sdk/completion.zsh.inc'; fi
