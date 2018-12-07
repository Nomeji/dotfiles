#!/bin/bash
default_sink=$(pacmd list-sinks | grep "*" | cut -d " " -f5)

if [[ $default_sink -eq 1 ]]; then
	echo P780
else
	echo Intel
fi