function virsh_start_attach
    sudo virsh start $argv[1]
    sudo virsh console $argv[1]
end
