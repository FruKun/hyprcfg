#!/bin/bash
while true; do
song_info=$(playerctl metadata --format '{{title}}  {{artist}}')

echo "$song_info"

sleep 10

done
