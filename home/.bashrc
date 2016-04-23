#bash controls
export HISTCONTROL=erasedups
export HISTFILESIZE=
export HISTSIZE=
shopt -s histappend
#export PS1="\W@\h$ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[31;1m\]\w\[\033[m\]\$ "
export GFORTRAN_UNBUFFERED_ALL=YES
export GREP_OPTIONS="--color=auto"
export LESS="-R"
export CLICOLOR=1
#terminal handling
stty -ixon
stty erase ^?
#aliases
alias vi="vim --noplugin"
alias ls="ls --color=auto"
alias gitig="git update-index --assume-unchanged "
alias gitin="git update-index --no-assume-unchanged "
alias gerritsql="ssh charmgit gerrit gsql"
alias namdcvs='cvs -d :pserver:nikhil@cvs.ks.uiuc.edu:/namd/cvsroot'
alias vimw="vim -c 'colorscheme delek'"
#paths and libraries
export PATH=/Users/jain6/installls/MacPorts-2.3.3/install/libexec/gnubin:/Users/jain6/installls/MacPorts-2.3.3/install//bin:$PATH
export PATH=/Applications/Skim.app/Contents/MacOS:$HOME/work/projections/bin:$PATH
export LD_LIBRARY_PATH=/opt/local/lib:/usr/local/lib:$LD_LIBRARY_PATH
#export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
#lab machines
export labf="-Nf2 -L 9103:finesse:22 nikhil@style.cs.illinois.edu"
export labp="-Nf2 -L 9109:prudence:22 nikhil@style.cs.illinois.edu"
export labi="-Nf2 -L 9104:integrity:22 nikhil@style.cs.illinois.edu"
export lab="-Nf2 -L 9104:integrity:22 nikhil@style.cs.illinois.edu"
export finesse="-p 9103 nikhil@localhost"
export integrity="-p 9104 nikhil@localhost"
export prudence="-p 9109 nikhil@localhost"
. ~/installls/MacPorts-2.3.3/install/share/macports/setupenv.bash

############################################

fill="--- "
reset_style='\[\033[00m\]'
status_style=$reset_style'\[\033[0;90m\]' # gray color; use 0;37m for lighter color

export PS1="$status_style"'$fill \t\n'"\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[31;1m\]\w\[\033[m\]\$ "

function prompt_command {
let fillsize=${COLUMNS}-9
fill=""
while [ "$fillsize" -gt "0" ]
do
fill="-${fill}" # fill with underscores to work on
let fillsize=${fillsize}-1
done
}

PROMPT_COMMAND=prompt_command
###########################################

