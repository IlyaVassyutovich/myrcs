if not set -q abbrs_initialized
    set -U abbrs_initialized

    abbr sfish "sudo -i /usr/bin/fish"
    abbr ssc "sudo systemctl"
    abbr scr "screen -D -R"
    abbr svirsh "sudo virsh"
end

# https://github.com/Homebrew/homebrew-core/issues/14737#issuecomment-309848851
set --export GPG_TTY (tty)

set fish_greeting
