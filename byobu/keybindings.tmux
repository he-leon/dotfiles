unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

bind -n M-k if "[ $(tmux display -p '#{pane_current_command}') = nvim ]" "send-keys M-k" "select-pane -U"
bind -n M-j if "[ $(tmux display -p '#{pane_current_command}') = nvim ]" "send-keys M-j" "select-pane -D"
bind -n M-h if "[ $(tmux display -p '#{pane_current_command}') = nvim ]" "send-keys M-h" "select-pane -L"
bind -n M-l if "[ $(tmux display -p '#{pane_current_command}') = nvim ]" "send-keys M-l" "select-pane -R"

bind-key -n M-v  split-window -h -c "#{pane_current_path}"
bind-key -n M-m  split-window -v -c "#{pane_current_path}"
bind-key -n M-q  kill-pane 

bind-key -n M-i  previous-window 
bind-key -n M-o  next-window 
bind-key -n M-c  new-window  -c "#{pane_current_path}"

bind -n F7  copy-mode
bind-key -T copy-mode-vi v send -X begin-selection
bind-key -T copy-mode-vi V send -X select-line
bind-key -T copy-mode-vi y send -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
bind -n F11 resize-pane -Z

