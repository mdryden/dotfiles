__firebase_project_ps1() {
    CONTEXT=$(__firebase_active_project)
       
    if [ -z "$CONTEXT" ]; then
        CONTEXT=$(__firebase_default)
    fi

    if [ -z "$CONTEXT" ]; then
        CONTEXT="(none)"
    fi

    echo -e "${LIME_YELLOW}fb:$CONTEXT "
}

__firebase_active_project() {
    if test -f "/root/.config/configstore/firebase-tools.json"; then
        CONTEXT=$(grep \"$(pwd)\" ~/.config/configstore/firebase-tools.json | cut -d" " -f2 | cut -d"\"" -f2)

        if [ -z "$CONTEXT" ]; then
            CONTEXT=$(grep \"$(dirname $(pwd))\" ~/.config/configstore/firebase-tools.json | cut -d" " -f2 | cut -d"\"" -f2)
        fi

        echo -e "$CONTEXT"
    fi
}

__firebase_default() {
    if test -f "$(pwd)/.firebaserc"; then
        echo -e "$(__firebase_default_from $(pwd)/.firebaserc)"
    fi
    
    if test -f "$(pwd)/../.firebaserc"; then
        echo -e "$(__firebase_default_from $(pwd)/../.firebaserc)"
    fi
}

__firebase_default_from() {
    echo $(grep \"default\" $1 | cut -d":" -f2 | cut -d"\"" -f2)
}