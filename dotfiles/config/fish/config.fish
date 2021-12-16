if not set -q abbrs_initialized
    set -U abbrs_initialized

    abbr sfish "sudo -i /usr/bin/fish"
    abbr ssc "sudo systemctl"
    abbr sc "systemctl"
    abbr scr "screen -D -R"
    abbr svirsh "sudo virsh"
    abbr svim "sudo -E vim"
    abbr megacli "sudo MegaCli64"
    abbr siotop "sudo iotop --only --processes"

    abbr d "docker"
    abbr dc "docker-compose"
end

# https://github.com/Homebrew/homebrew-core/issues/14737#issuecomment-309848851
set --export GPG_TTY (tty)

set --export LESS R

set fish_greeting
