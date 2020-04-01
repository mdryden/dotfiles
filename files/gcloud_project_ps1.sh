__gcloud_project_ps1() {
    if test -f "/root/.config/gcloud/active_config"; then
        CONTEXT=$(cat /root/.config/gcloud/active_config)

        if [ -n "$CONTEXT" ]; then
            echo -e "${CYAN}gcp:${CONTEXT} "
        fi
    fi
}