abbr sfish "sudo -i /usr/bin/fish"
abbr ssc "sudo systemctl"
abbr sc "systemctl"
abbr scr "screen -D -R"
abbr tmux "tmux new-session -A -D -s main"

abbr vim "nvim"
abbr svim "sudo -E nvim"
abbr megacli "sudo MegaCli64"
abbr siotop "sudo iotop --only --processes"
abbr siftop "sudo iftop -n -N -B"

abbr d "docker"
abbr dc "docker compose"

abbr cz "compozd"
abbr czd "compozd down"
abbr czu "compozd up"

abbr co "compozd"
abbr cod "compozd down"
abbr cou "compozd up"
abbr col "compozd logs"
abbr coul "compozd uplog"
abbr coua "compozd uptach"

abbr g "git"

abbr p "podman"
abbr pc "podman compose"
abbr pcu "podman compose up --detach"
abbr pcd "podman compose down"
abbr pca "podman compose up"

set --global fish_prompt_pwd_dir_length 69

# https://github.com/Homebrew/homebrew-core/issues/14737#issuecomment-309848851
set --export GPG_TTY (tty)


set --export LESS R


set fish_greeting


fzf --fish | source
zoxide init fish | source
