function df
    /bin/df \
        --human-readable \
        --print-type \
        --exclude-type devtmpfs \
        --exclude-type tmpfs \
        --exclude-type squashfs
end
