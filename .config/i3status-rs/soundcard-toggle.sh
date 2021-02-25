#!/bin/bash
default_sink=$(pactl info | grep "Default Sink" | cut -d " " -f3)
sinks=$(pactl list sinks | grep Name | cut -d " " -f2)

for sink in $sinks; do
	if [ $default_sink != $sink ]; then
		new_default=$sink
		return
	fi
done

pactl set-default-sink $new_default

pactl list short sink-inputs|while read stream; do
	streamId=$(echo $stream|cut '-d ' -f1)
	pactl move-sink-input $streamId $new_default
done;
