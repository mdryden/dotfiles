__gcloud_project_ps1() {
    if test -d "/$HOME/.config/gcloud"; then
        CONTEXT="(none)"

        if test -f "/$HOME/.config/gcloud/active_config"; then
            CONTEXT=$(cat /$HOME/.config/gcloud/active_config)
        fi

        echo -e "${CYAN}gcp:${CONTEXT} "
    fi
}
