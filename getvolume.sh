#!/bin/bash

# Gets the volume percentage of the first audio device in pactl

pactl list sinks | grep '^[[:space:]]Volume:' | head -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
