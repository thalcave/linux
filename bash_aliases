alias ls="ls --color=auto"
alias ll="ls -l"                # List detailled.
alias la='ls -la'       # List all.
alias lsd="ls -d */"            # List only the directory.
alias cd..="cd .."
alias cdd="cd ../../"
alias s="cd .."
alias p="cd -"
alias md="mkdir"
alias rd="rmdir"
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
alias l="ls -l"
alias ltr="ls -ltr"
alias grep="grep --colour"
alias mc="mc -ac"
alias latr="ls -altr"
alias lcpp="ls -l *.cpp"
alias cgrep="grep --include=*.c --include=*.h -r"
alias grepcpp="grep --include=*.cpp --include=*.hpp --include=*.h -r --include=*.tcc"
alias greppy="grep --include=*.py -r"
alias grept="grep --include=*.txt -r"
alias grepj="grep --include=*.java -r"
alias grepxml="grep --include=*.xml -r"
alias nano="/usr/bin/nano -w"
alias lh="ls -hl"
alias df="df -h; date"
alias mcal="ncal -yM"
alias tf="tail -F"
alias pss="ps auxw | grep -v grep | grep"
alias locate="locate -i"
alias wcl="wc -l"
alias runcpp="cppcheck-latest  --enable=all . 2>latest_version.txt"
alias lpy="ls -l *.py"
alias em="emacs -nw"
alias greph="grep --include=*.php -r"
alias scat="spc -c ~florin.micu/spcrc"

fn() {
	find . -iname \*$1\*
}

fname() {
	find . -name $1
}

lspar() {
	ls -l `dirname $1`
}

alias gss="git show --stat"
alias gsh="git show"
alias gl="git log"
alias gln="git log -n "
alias gd="git diff"
alias gdc="git diff --cached"
alias gst="git status"
alias glistbr="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias gdw="git diff -b --color-words"
alias cdq="cd /home/florin.micu/Work/Qnective/florin.micu"
alias gcmd="cat /home/florin.micu/Work/Qnective/Docu/Git/cmds.txt"

gitname() {
	git diff --name-status $1~1..$1
}

alias scrot="scrot ~/Pictures/Scrot/%Y-%m-%d-%T-screenshot.png"

gitdiffrev() {
    git diff $2~1..$2  $1
}

gblame() {
	git blame `find . -name $1`
}


gitignore() {
	git update-index --assume-unchanged $1
}

lastbranches()
{
	for k in `git branch | sed s/^..//`; do echo -e `git log -1 --pretty=format:"%Cgreen%ci %Cred%cr%Creset" $k --`\\t"$k";done | sort
}
