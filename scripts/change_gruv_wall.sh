#!/bin/bash
wall=();
tran=(
    "left " " right " " top " " bottom " " wipe " " grow " " center " " outer "  " wave"
);
select_random() {
    printf "%s\0" "$@" | shuf -z -n1 | tr -d '\0'
}
swww img "/home/tejes/wallpapers/Gruv/wall_secondary.png"  --transition-bezier .43,1.19,1,.4 \
    --transition-type center \
    --transition-duration 1 \
    --transition-fps 144 \
    --transition-pos top
