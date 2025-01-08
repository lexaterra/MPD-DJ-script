quit=""
#mpd
mpc --host=0.0.0.0 --port=8600 play
while true; do
 
    #cmus-remote -n
    mpc --host=0.0.0.0 --port=8600 next
    mpc --host=0.0.0.0 --port=8600 seek 00:01:00
    read -n 1 -s -t $((59 - $(date +%s) % 60)) quit
    if [ -n "$quit" ]; then
    if [ $quit == "q" ]; then
    mpc --host=0.0.0.0 --port=8600 stop
    exit
    fi
    else
    sleep 30
    fi
done