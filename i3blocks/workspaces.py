#!/usr/bin/env python3
import i3ipc

i3 = i3ipc.Connection()

def get_active_workspace():
    focused_ws = i3.get_tree().find_focused()
    return focused_ws.workspace().name if focused_ws else None

def get_window_titles():
    active_ws = get_active_workspace()
    if not active_ws:
        return "No Workspaces"

    windows = [win.window_class for win in i3.get_tree().leaves() if win.workspace().name == active_ws]
    return f" : {' | '.join(windows) if windows else 'Empty'}"

if __name__ == "__main__":
    print(get_window_titles())

