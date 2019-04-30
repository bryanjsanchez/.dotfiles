# Aliases
alias rumad='ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 -oHostKeyAlgorithms=+ssh-dss estudiante@rumad.uprm.edu'
alias editbash='vim ~/.bash_profile'
alias editvim='vim ~/.vimrc'
alias refresh='source ~/.bash_profile'
alias ls='ls -GFh'
alias ll='ls -ltrh'

# Prompt format
export PS1="\n"                                 # Newline
export PS1+="\[\e[36m\]\u\[\e[m\] "             # User
export PS1+="$(((SHLVL>1))&&echo \($SHLVL\)\ )"    # Nested shells
export PS1+="[\w] "                             # Path
export PS1+="$ "                                # $

# $PATH setup
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH="/Users/nemo/miniconda2/bin:$PATH" # added by Miniconda2 installer
export PATH="~/.local/bin:/anaconda3/bin:$PATH" # added by Anaconda3 5.2.0 installer
export PATH="/opt/local/bin:/opt/local/sbin:$PATH" # added by MacPorts (I think)

# Miscellaneous
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border' #Fuzzy find options
bind 'TAB:complete'
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous on"
shopt -s cdspell
