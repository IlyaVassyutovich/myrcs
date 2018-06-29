if not set -q abbrs_initialized
    set -U abbrs_initialized

    abbr sfish "sudo -E -i /usr/bin/fish"
    abbr ssc "sudo systemctl"
end
