#!/bin/bash
echo $(pactl info | grep "Default Sink" | cut -d "." -f2)

# name=$(pw-dump | jq -r '.[] | select(.info.props."media.class" == "Audio/Sink") | select(.info.state == "running") | .info.props."node.description"')
# echo "${name::20}"
