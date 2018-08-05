#!/usr/bin/python
from subprocess import check_output
from subprocess import call

# Get all windows of desktop
all_win_of_desktop = check_output(["chunkc", "tiling::query --desktop windows"])

# All windows IDs sorted (caution Impure!)
all_win_ids = list(
    map(
        lambda e: int(e.split(",")[0]),
        all_win_of_desktop.splitlines()
    )
)
all_win_ids.sort()

# Get focus window id
focus_win_id = int(check_output(["chunkc", "tiling::query --window id"]))

# Get the focus window index
focus_win_index = all_win_ids.index(focus_win_id)

# TODO don't call chunkc when there is just one window
# Get next index
if focus_win_index == len(all_win_ids)-1:
    next_win_index = 0
else:
    next_win_index = focus_win_index + 1

# Next window ID
next_win_id = all_win_ids[next_win_index]

# Select next window
call(["chunkc", "tiling::window --focus "+str(next_win_id)])