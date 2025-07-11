neofetch
nvtop
sudo apt install nvtop
nvtop
sudo apt install obs-studio
neofetch
htop
neofetch
htop
nvtop
clear
sudo vim /etc/systemd/logind.conf
sudo apt install vim
sudo vim /etc/systemd/logind.conf
sudo systemctl restart systemd-logind
htop
nvidia-smi
cleaar
nvyop
nvtop
htop
nvidia-smi
sensors
clear
nvidia-smi
sensors
sensors\
sensors
clear
htop
sudo apt install brave
sudo apt install brave-browser
sudo apt install brave
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave.com/signing-keys/brave-browser-archive-keyring.gpg
curl -fsS https://dl.brave.com/install.sh | sh
htop
clear
nvtop
nvidia-smi
clear
nvtop
clear
nvidia-smi
sudo apt install Allacrity 
sudo apt install Alacritty 
cargo install alacritty
sudo apt install cargo 
cargo install alacritty
clear
nvidia-smi
exit
sudo apt update
sudo apt install snapd
clear
ls -lah
nvidia-smi
neofetch
sudo apt install kitty
clear
nvidia-smi
clear
sudo apt remove alacritty
clear
vim ~/.config/kitty/kitty.conf
ls
ls -lah
clear
vim ~/.config/kitty/kitty.conf
ls -lah
man ls
lsblk
nvtop
nvidia-smi
clear
nvidia-smi
cclear
clear
nvidia-smi
clear
nvidia-smi
clear
nvidia-smi
sudo apt update
sudo apt install i3
sudo apt install i3blocks dmenu feh lxappearance picom nitrogen
clear
ls -alh
clear
ls -alh
htop
nvtop

vim .config
sudo apt install lemonabr
sudo apt install lemonbar
vim  .config
sudo apt install rofi
vim .config
clear
ls -alh
vim .config
xrandr
exec --no-startup-id xrandr --output HDMI-1-1 --mode 2560x1440
xrandr --output HDMI-1-1 --mode 2560x1440
xrandr --output eDP-1 --off --output HDMI-1-1 --mode 2560x1440 --primary
xrandr --output eDP1 --off --output HDMI-1-1 --mode 2560x1440 --primary
xrandr --output eDP-1-1 --off --output HDMI-1-1 --mode 2560x1440 --primary
clear
neofetch'
neofetch
xrandr
clear
xrandr
xrandr --output eDP-1-1 --off --output HDMI-1-1 --mode 2560x1440 --rate 120.00 --primary
xrandr
clear
xrandr
clear
ls 
ls .config/lemonbar
ls .config/lemonbar/statusbar.sh 
.config/lemonbar/statusbar.sh 
ip link 
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh 
vim .config/lemonbar/statusbar.sh
scort
scrot
sudo apt install scrot
clear
htop
scrot
ls -alh
cd images
mkdir screenshots
clear
vim .config/i3/
ip link
newofetch
neofetch
vim .config/
ip link
ip link show up
ip -o link show up | awk -F': ' '{print $2}'
ip -o link show up | awk -F': ' '{print $2}' | grep -Ev '^(lo|docker0|veth.*)$'
ping google.com
sudo apt update

clear
nvtop
feh
clear
sudo apt install arc-theme
sudo apt install lxappearance
htop
vim .config/
amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s",$6)}'
amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s\n",$5)}'
amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s",$6)}'
get_audio(){    STATUS=$(amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s",$6)}');    VOL=$(amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s\n",$5)}');         if [ "$STATUS" == "[on]" ]; then        STATUS="";      else        STATUS="[muted]";        VOL=""  ;      fi;       echo "$STATUS $VOL"   ; }
get_audio()
get_audio
htop
pkill lemonabr
pkill lemonabar
pkill lemonbar
./config/lemonbar/startstatus.sh
ls ./config/lemonbar/
ls ./config/lemonbar
ls ./config
.config/lemonbar/startstatus.sh
.config/lemonbar/
ls .config/lemonbar/
.config/lemonbar/statusbar.sh
vim .config/
picom
vim .config/
which picom
vim .config/
vim .config
vim .config/
mkdir .config/picom
vim .config/picom/picom.conf
vim .config
rm .config/i3/statusbar.sh
vim .config
vim .config/
vim .config
aplay -l
amixer -c 0
clear
amixer -c 0
get_audio(){    STATUS=$(amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s",$6)}');    VOL=$(amixer|grep  -m 1 'Front Left: Playback' | awk '{printf("%s\n",$5)}');         if [ "$STATUS" == "[on]" ]; then        STATUS="";      else        STATUS="[muted]";        VOL=""  ;      fi;       echo "$STATUS $VOL"   ; }
get_audio
pamixer --get-mute 
sudo apt install pamixer
pamixer --get-mute 
pamixer --get-volume
wpctl get-mute @DEFAULT_AUDIO_SINK@
wpctl get-mute @DEFAULT_AUDIO_SINK@ status
wpctl get-mute @DEFAULT_AUDIO_SINK@
/run/user/$(id -u)
$(id -u)
id -u
vim .config
vim .bashrc
vim .config/
vim .config
vim .config/
vim .config
vim .bashrc
vim .config
wpctl get-mute @DEFAULT_AUDIO_SINK
wpctl get-mute
wpctl status
wpctl get-mute @DEFAULT_AUDIO_SINK@
wpctl get-volume @DEFAULT_AUDIO_SINK@
wpctl get-volume @DEFAULT_AUDIO_SINK@ 
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F""
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F: 'print $1'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F: '{print $1}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F: 
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F: '{print $1 $2}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F: '{print  $2}'
wpctl get-volume @DEFAULT_AUDIO_SINK@
wpctl get-volume @DEFAULT_AUDIO_SINK@ 
echo "Volume: 0.25 [MUTED]" | awk '{val = $2 * 100; printf "Volume: %.0f%% [MUTED]\n", val} 
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk -F: '{print  $2}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ : awk '{ printf "$2" }'
wpctl get-volume @DEFAULT_AUDIO_SINK@ : awk '{ printf $2 }'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ printf $2 }'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val $2*100; printf "V"  Volume: %.0f%% %s" val $3}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val $2*100; printf "V"  Volume: %.0f%% %s" val,$3}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val=$2*100; printf "V"  Volume: %.0f%% %s" val,$3}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val=$2*100; printf "Volume: %.0f%% %s" val,$3}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val=$2*100; printf "Volume: %.0f%% %s" val $3}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val=$2*100; printf "Volume: %.0f%% %s" val}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val=$2*100; printf "Volume: %.0f%%" val}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val=$2*100; printf "Volume: %.0f%%",val}'
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val=$2*100; printf "Volume: %.0f%% %s",val,$3}'
fc-list | grep "Ubuntu"
clear
exit
vim .config
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ val $2*100; printf "V"  Volume: %.0f%% %s" val $3}'
clear
vim .config
.config/lemonbar/statusbar.sh
pkill lemonbar
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
xterm -fa "Ubuntu Mono" -fs 10
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
fc-cache -fv
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
echo "%{F#ff5555} %{F#ffffff}Power"
echo "%{F#ffffff}Normal %{F#ffcc00}Highlighted"
echo "%{T1}BOLD TEXT%{T0} normal text"
sudo apt-get install xfontsel
sudo apt install xterm
.config/lemonbar/statusbar.sh
xterm -fa "Ubuntu Mono" -fs 10
lemonbar
lemonbar --version
lemonbar --v
man lemonbar 
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
clear
mkdir repos
cd repos
git clone https://github.com/LemonBoy/bar.git
sudo apt install git
git clone https://github.com/LemonBoy/bar.git
cd ./bar/
ls
make
cat Makefile
sudo apt install libxcb1-dev
make
sudo apt install libxcb1-dev
sudo apt install libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev
make
sudo apt install libxcb-xinerama0-dev
make
ls
sudo apt remove lemonbar
make install
sudo make install
clear
cd ~
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/i3
.config/lemonbar/statusbar.sh
vim .config/i3
.config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh\
.config/lemonbar/statusbar.sh
nitrogen--restore
nitrogen --restore
vim .config
clear
vim .config
.config/lemonbar/statusbar.sh
vim .config
xrandr | grep '*' 
vim .config
gaps inner 0; gaps outer 0
gaps inner 0 gaps outer 0
gaps inner 0 
i3-msg -t get_tree | grep -A5 '"type":"workspace"'
i3-msg "workspace current; gaps inner current set 0; gaps outer current set 0"
.config/lemonbar/statusbar.sh
vim .config/
pkill lemonbar
vim .config/
.config/lemonbar/statusbar.sh
pkill lemonbar
.config/lemonbar/statusbar.sh
vim.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
pkill lemonbar
vim .config/lemonbar/statusbar.sh
cd repos
cd ./bar/
ls
make unisnatll
sudo make 
cat Makefile 
make uninstall
sudo make uninstall
clear
cd ..
git clone https://github.com/silentz/lemonbar-xft.git
cd ./lemonbar-xft/
ls
make
sudo apt-get install libxft-dev

sudo apt-get install libx11-xcb-dev
make
ls
sudo make install
clear
cd ..
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
sudo apt-get install fonts-ubuntu
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
vim .config/lemonbar/statusbar.sh
.config/lemonbar/statusbar.sh
clear
vim .config/
htop
reboot
