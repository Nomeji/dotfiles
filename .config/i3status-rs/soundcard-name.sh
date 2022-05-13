#!/bin/bash
echo $(pactl info | grep "Default Sink" | cut -d "." -f2)