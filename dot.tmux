# plugin manager: https://github.com/tmux-plugins/tpm
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# color theme
set -g @plugin 'catppuccin/tmux'
set -g @catppuccin_window_tabs_enabled on

# set the tmux prefix to backtick, instead of C-b
unbind C-b
set-option -g prefix `
bind ` send-prefix

# sets up the tmux splitting, vertically & horizontal
bind - split-window -v
bind _ split-window -h

# pane navigation
bind -r h select-pane -L  # move left
bind -r j select-pane -D  # move down
bind -r k select-pane -U  # move up
bind -r l select-pane -R  # move right
bind > swap-pane -D       # swap current pane with the next one
bind < swap-pane -U       # swap current pane with the previous one

# move the current window left or right (re-order) via ctrl-shift-left/right
bind-key -n C-S-Left swap-window -t -1\; select-window -t -1
bind-key -n C-S-Right swap-window -t +1\; select-window -t +1

# bind prefix-left/right to switch widows
bind -r S-Left select-window -t -1
bind -r S-Right select-window -t +1

# pane resizing
bind -r H resize-pane -L 2
bind -r J resize-pane -D 2
bind -r K resize-pane -U 2
bind -r L resize-pane -R 2

bind s display-popup -E "~/.zsh/scripts/tmux-sessionizer"
bind S display-popup -E "~/.zsh/scripts/tmux-sessionizer switch"

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
