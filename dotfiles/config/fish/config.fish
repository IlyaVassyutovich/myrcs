abbr sfish "sudo -i /usr/bin/fish"
abbr ssc "sudo systemctl"
abbr sc "systemctl"
abbr scr "screen -D -R"
abbr tmux "tmux new-session -A -D -s 🤘"

abbr svirsh "sudo virsh"
abbr svs "sudo virsh start"
abbr svc "sudo virsh console"
abbr svsa "virsh_start_attach"
abbr svl "sudo virsh list"
abbr svla "sudo virsh list --all"

abbr svim "sudo -E vim"
abbr megacli "sudo MegaCli64"
abbr siotop "sudo iotop --only --processes"
abbr siftop "sudo iftop -n -N -B"

abbr d "docker"
abbr dc "docker compose"


# https://github.com/Homebrew/homebrew-core/issues/14737#issuecomment-309848851
set --export GPG_TTY (tty)


set --export LESS R


set fish_greeting
