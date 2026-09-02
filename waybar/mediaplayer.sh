#!/bin/bash

playerctl metadata --format '{"text": "{{ title }} - {{ artist }}", "alt": "{{ playerName }}"}' --follow
