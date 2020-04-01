__gcloud_project_ps1() {
    if test -f "/root/.config/gcloud"; then
        if test -f "/root/.config/gcloud/active_config"; then
            CONTEXT=$(cat /root/.config/gcloud/active_config)
        fi

        if [ -z "$CONTEXT" ]; then
            CONTEXT="(none)"
        fi

        if [ -n "$CONTEXT" ]; then
            echo -e "${CYAN}gcp:${CONTEXT} "
        fi
    fi
}