# plugin manager: https://github.com/tmux-plugins/tpm
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# color theme
set -g @plugin "arcticicestudio/nord-tmux"

# set the tmux prefix to backtick, instead of C-b
unbind C-b
set-option -g prefix `
bind ` send-prefix

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
