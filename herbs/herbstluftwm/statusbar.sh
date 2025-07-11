#script
#!/bin/bash

# Adjust your network interface here
NET_IF="wlan0"

get_cpu_usage() {
    read -r cpu user nice system idle rest < /proc/stat
    total1=$((user + nice + system + idle))
    idle1=$idle

    sleep 1

    read -r cpu user2 nice2 system2 idle2 rest < /proc/stat
    total2=$((user2 + nice2 + system2 + idle2))
    idle2=$idle2

    total_diff=$((total2 - total1))
    idle_diff=$((idle2 - idle1))
    usage=$((100 * (total_diff - idle_diff) / total_diff))

    echo "${usage}%"
}


get_audio(){

   STATUS=$(amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s",$6)}')
   VOL=$(amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s\n",$5)}')
   
    if [ "$STATUS" == "[on]" ]; then
       STATUS=""
     else
       STATUS="[muted]"
       VOL=""  
     fi

     echo "$STATUS $VOL"   
}

get_battery_status(){
   BAT_PATH="/sys/class/power_supply/BAT1"
   CAPACITY=$(cat "$BAT_PATH/capacity")
   STATUS=$(cat "$BAT_PATH/status")
   echo "🔋 $CAPACITY% ($STATUS)"


}

# Function to get bandwidth
get_bandwidth() {
    R1=$(cat /sys/class/net/$NET_IF/statistics/rx_bytes)
    T1=$(cat /sys/class/net/$NET_IF/statistics/tx_bytes)
    sleep 1
    R2=$(cat /sys/class/net/$NET_IF/statistics/rx_bytes)
    T2=$(cat /sys/class/net/$NET_IF/statistics/tx_bytes)
    RX=$(echo "scale=1; ($R2 - $R1) / 1024" | bc)
    TX=$(echo "scale=1; ($T2 - $T1) / 1024" | bc)
    echo "${RX}K ↓  ${TX}K ↑"
}

# Main loop
while true; do
    CPU=$(get_cpu_usage)
    CPU_TEMP=$(sensors | grep -m 1 'Package id 0:' | awk '{print $4}')
    MEM=$(free -m | awk '/Mem:/ {printf "%.0f%%", $3/$2 * 100}')
    NET=$(get_bandwidth)
    BAT=$(get_battery_status)	
    DATE=$(date '+%Y-%m-%d %H:%M:%S')
    VOL=$(get_audio)
    echo -e "BAT:$BAT | Volume: $VOL | CPU: $CPU, TEMP: $CPU_TEMP | RAM: $MEM | NET: $NET | $DATE  "
done | lemonbar -g 1920x24+0+1056 -B "#222222" -F "#ffffff" -f "FiraCode Nerd Font:size=10"
