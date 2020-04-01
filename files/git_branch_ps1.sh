__git_branch() {
    CONTEXT=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    
    if [ -z "$CONTEXT" ]; then
        CONTEXT="(none)"    
    fi

    echo -e "${POWDER_BLUE}git:${CONTEXT} "
}
