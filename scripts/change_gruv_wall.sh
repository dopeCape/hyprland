#!/bin/bash
wall=();
tran=(
    "left " " right " " top " " bottom " " wipe " " grow " " center " " outer "  " wave"
);

select_random() {
    printf "%s\0" "$@" | shuf -z -n1 | tr -d '\0'
}
search_dir=/home/tejes/wallpapers/Gruv
for entry in "$search_dir"/*
do
    wall+=($entry)                  # Also Push

done

x=$(select_random "${wall[@]}")
y=$(select_random "${tran[@]}")
echo "$x"

swww img $x  --transition-bezier .43,1.19,1,.4 \
    --transition-type center \
    --transition-duration 1 \
    --transition-fps 144 \
    --transition-pos top
