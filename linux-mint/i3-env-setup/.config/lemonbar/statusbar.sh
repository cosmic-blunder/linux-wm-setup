#script
#!/bin/bash

# Adjust your network interface here

NET_IF=$(ip -o link show up|  ip -o link show up| grep -i 'state UP mode'|awk -F': ' '{print $2}' | grep -Ev '^(lo|docker0|veth.*)$')
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

   if [ "$usage" -lt 30 ]; then
        COLOR="#00ff00"  # Green
    elif [ "$usage" -lt 60 ]; then
        COLOR="#ffff00"  # Yellow
    else
        COLOR="#ff0000"  # Red
    fi

    echo "%{F$COLOR}$usage%%%{F-}"

    #echo "${usage}%"
}


get_audio(){
    
     VOL=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val=$2*100; printf "Volume: %.0f%% %s",val,$3}')

     echo "$VOL"   
}

get_battery_status() {
    BAT_PATH="/sys/class/power_supply/BAT1"
    CAPACITY=$(cat "$BAT_PATH/capacity")
    STATUS=$(cat "$BAT_PATH/status")

    # Choose icon
    if [ "$STATUS" = "Charging" ]; then
        ICON="⚡"
    elif [ "$CAPACITY" -gt 80 ]; then
        ICON=""
    elif [ "$CAPACITY" -gt 60 ]; then
        ICON=""
    elif [ "$CAPACITY" -gt 40 ]; then
        ICON=""
    elif [ "$CAPACITY" -gt 20 ]; then
        ICON=""
    else
        ICON=""
    fi

    # Color based on level
    if [ "$CAPACITY" -gt 70 ]; then
        COLOR="#00ff00"
    elif [ "$CAPACITY" -gt 40 ]; then
        COLOR="#ffff00"
    else
        COLOR="#ff0000"
    fi

    echo "%{F$COLOR} $ICON $CAPACITY%% ($STATUS) %{F-}"
}
_get_battery_status() {
    BAT_PATH="/sys/class/power_supply/BAT1"
    CAPACITY=$(cat "$BAT_PATH/capacity")
    STATUS=$(cat "$BAT_PATH/status")

    if [ "$CAPACITY" -gt 70 ]; then
        COLOR="#00ff00"  # Green
    elif [ "$CAPACITY" -gt 40 ]; then
        COLOR="#ffff00"  # Yellow
    else
        COLOR="#ff0000"  # Red
    fi

    echo "%{F$COLOR} $CAPACITY%% ($STATUS)%{F-}"
}

green() {
  echo "%{F#00ff00}$1%{F-}"  # Bright Green
}

light_blue() {
  echo "%{F#00ccff}$1%{F-}"  # Light Blue / Sky Blue
}

blue() {
  echo "%{F#0000ff}$1%{F-}"  # Standard Blue
}

red() {
  echo "%{F#ff0000}$1%{F-}"  # Bright Red
}

yellow() {
  echo "%{F#ffff00}$1%{F-}"  # Bright Yellow
}

orange() {
  echo "%{F#ffa500}$1 $2 $3 $4%{F-}"  # Orange
}

magenta() {
  echo "%{F#ff00ff}$1%{F-}"  # Magenta / Pink
}

cyan() {
  echo "%{F#00ffff}$1%{F-}"  # Cyan / Aqua
}

white() {
  echo "%{F#ffffff}$1%{F-}"  # White
}

gray() {
  echo "%{F#888888}$1%{F-}"  # Gray
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
    echo $(light_blue  "${RX}K ↓  ${TX}K ↑")
}


get_cpu_temp(){
 	
    TEMP=$(sensors | grep -m 1 'Package id 0:' | awk '{print $4}')
    TEMP_NUM=$(echo $TEMP |grep  -oE "[0-9]{2}")
    
    if [ "$TEMP_NUM" -lt 50 ]; then
        COLOR="#00ff00"  # Green
    elif [ "$TEMP_NUM" -lt 70 ]; then
        COLOR="#ffff00"  # Yellow
    else
        COLOR="#ff0000"  # Red
    fi

    echo "%{F$COLOR}$TEMP %{F-}"
}


get_ram_usage(){
    
     MEM=$(free -m | awk '/Mem:/ {printf "%.0f%%", $3/$2 * 100}')
     MEM_NUM=$(echo $MEM |grep -oE "[0-9]{1,3}")
   
    if [ "$MEM_NUM" -lt 45 ]; then
        COLOR="#00ff00"  # Green
    elif [ "$MEM_NUM" -lt 70 ]; then
        COLOR="#ffff00"  # Yellow
    else
        COLOR="#ff0000"  # Red
    fi
    echo "%{F$COLOR}$MEM% %{F-}"
}

# Main loop
while true; do
    CPU=$(get_cpu_usage)
    CPU_TEMP=$(get_cpu_temp)
    MEM=$(get_ram_usage)
    NET=$(get_bandwidth)
    BAT=$(get_battery_status)    
    DATE1=$(date '+%Y-%m-%d %H:%M:%S (%A)')
    DATE=$(echo "%{F#00ff00}${DATE1}%{F-}")
    VOL=$(get_audio)
    echo  "%{r}|CPU:$CPU,Temp: $CPU_TEMP| RAM: $MEM| NET: $NET| $VOL | $DATE | $BAT|"
done | lemonbar -g 2560x24+0+0 -b "#222222" -F "#ffffff"  -f "FiraCode Nerd Font:stye=bold:size=12" -f "DejaVu Sans Mono-12" 
