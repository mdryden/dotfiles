
source ~/dotfiles/colors.sh

source ~/dotfiles/firebase_project_ps1.sh
source ~/dotfiles/git_branch_ps1.sh
source ~/dotfiles/gcloud_project_ps1.sh


user_ps1() {
    echo -e "${GREEN}$(whoami)@$(hostname)"    
}

# # gcloud project and path on top
export PS1='$(__gcloud_project_ps1)$(__firebase_project_ps1)$(__git_branch)
$(user_ps1) \[\033[01;34m\]\w\[${NORMAL}\]\$ '