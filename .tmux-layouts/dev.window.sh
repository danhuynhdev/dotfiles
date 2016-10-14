# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/dev"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "dev"

# Split window into panes.
split_v 50
split_h 50

# Run commands.
run_cmd "skulls" 1
run_cmd "wicd-curses" 2
run_cmd "screenfetch" 3

select_pane 1
