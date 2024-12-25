quit=""
while true; do
 
    cmus-remote -n

    read -n 1 -s -t $((59 - $(date +%s) % 60)) quit
    if [ -n "$quit" ]; then
    if [ $quit == "q" ]; then
    exit
    fi
    else
    sleep 30
    fi
done