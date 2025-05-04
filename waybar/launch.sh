# Copy files to ~/.config/waybar
cp config ~/.config/waybar/
cp style.css ~/.config/waybar/
cp modules.json ~/.config/waybar/
cp scripts/* ~/.config/waybar/scripts

killall waybar
waybar &

