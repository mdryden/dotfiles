__gcloud_project_ps1() {
    if test -d "/root/.config/gcloud"; then
        CONTEXT="(none)"

        if test -f "/root/.config/gcloud/active_config"; then
            CONTEXT=$(cat /root/.config/gcloud/active_config)
        fi

        echo -e "${CYAN}gcp:${CONTEXT} "
    fi
}