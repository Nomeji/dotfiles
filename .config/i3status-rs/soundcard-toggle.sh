#!/bin/bash
default_sink=$(pacmd list-sinks | grep "*" | cut -d " " -f5)

if [[ $default_sink -eq 1 ]]; then
	new_default=0
else
	new_default=1
fi

pactl set-default-sink $new_default

pactl list short sink-inputs|while read stream; do
	streamId=$(echo $stream|cut '-d ' -f1)
	pactl move-sink-input $streamId $new_default
done;
