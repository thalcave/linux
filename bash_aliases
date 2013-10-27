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


fn() {
	find . -iname \*$1\*
}

