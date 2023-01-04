unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

# Use Alt-vim keys without prefix key to switch panes
bind -n M-h select-pane -L
bind -n M-j select-pane -D 
bind -n M-k select-pane -U
bind -n M-l select-pane -R

bind-key -n M-v  split-window -h -c "#{pane_current_path}"
bind-key -n M-m  split-window -v -c "#{pane_current_path}"
bind-key -n M-q  kill-pane 

bind-key -n M-i  previous-window 
bind-key -n M-o  next-window 
bind-key -n M-c  new-window  -c "#{pane_current_path}"

