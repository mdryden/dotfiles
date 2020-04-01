__firebase_project_ps1() {
    if test -f "/root/.config/configstore/firebase-tools.json"; then
        CONTEXT=$(grep \"$(pwd)\" ~/.config/configstore/firebase-tools.json | cut -d" " -f2 | cut -d"\"" -f2)
       
        if [ -z "$CONTEXT" ]; then
            CONTEXT="(none)"
        fi

        echo -e "${LIME_YELLOW}fb:$CONTEXT "
    fi
}