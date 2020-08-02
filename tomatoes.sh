start=$SECONDS
endat=$1

function tomato {
secondsleft=$(( $SECONDS - $start ))
secondsleft=$(( $endat - $secondsleft ))
minutes=$((secondsleft / 60))
seconds=$((secondsleft % 60))
printf "🍅🍅🍅  %02d:%02d 🍅🍅🍅" $minutes $seconds
}

duration=$(( SECONDS - start ))
while [ $duration -lt $1 ]
do
duration=$(( SECONDS - start ))
clear
tomato
sleep 1
done

notify-send "$2"
