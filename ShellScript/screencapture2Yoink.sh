#!/bin/bash

if [ ! -e "${yoink_path}" ]; then
    echo "Could't find the Yoink App installed in \"${yoink_path}\""
    exit
fi

# Get the current date time
timestamp=$(date "${date_format}")

if [[ ${screenshot_alt_dir} ]]; then
    # Expand a ~ to the actual home directory
    screenshot_dir="${screenshot_alt_dir/#\~/$HOME}"
else
    screenshot_dir=$(defaults read com.apple.screencapture location)
    # If an alternative location for screenshots hasn't been set, default to ~/Desktop
    if [ ! -d "${screenshot_dir}" ]; then
        screenshot_dir="${HOME}/Desktop"
    fi
fi

# If the target dir doesn't exist, make it exist
if [ ! -d "${screenshot_dir}" ]; then
    mkdir "${screenshot_dir}"
    if [ ! -d "${screenshot_dir}" ]; then
        echo "Failed to create a screenshot directory in \"${screenshot_dir}\""
        exit
    fi
fi

screenshot_path="${screenshot_dir}/${base_name}${timestamp}${extension}"

# Take the actual screenshot
capture_output = $(screencapture "${screencapture_flags}" "${screenshot_path}")

# Trigger Yoink with the image that's just been captured
if [[ ${capture_output} ]]; then
    echo "Failed to capture a screenshot in \"${screenshot_path}\""
else
    open -a "${yoink_path}" "${screenshot_path}"
fi