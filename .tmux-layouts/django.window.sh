# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
window_root "~/Development/python-project"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "django"

# Split window into panes.
split_v 50
split_h 50

# Run commands.
run_cmd "workon django1.8" 1
run_cmd "workon django1.8" 2
run_cmd "workon django1.8" 3

# Paste text
send_keys "C-l" 1
send_keys "C-l" 2
send_keys "C-l" 3

# Set active pane.
select_pane 1
