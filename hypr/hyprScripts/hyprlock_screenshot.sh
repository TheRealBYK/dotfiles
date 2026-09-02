#!/bin/bash
hyprlock &
sleep 5   # small delay so the lock engages first
hyprshot -m output -m DP-1 --output-folder /home/youruser/Pictures/
