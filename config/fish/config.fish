if not set -q abbrs_initialized
    set -U abbrs_initialized

    abbr sfish "sudo -E -i /usr/bin/fish"
    abbr ssc "sudo systemctl"
end

# https://github.com/Homebrew/homebrew-core/issues/14737#issuecomment-309848851
set --export GPG_TTY (tty)
