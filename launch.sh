# Copy files to ~/.config/waybar
cp config ~/.config/waybar/test
cp style.css ~/.config/waybar/test
cp modules.json ~/.config/waybar/test
cp scripts/* ~/.config/waybar/test/scripts

killall waybar
waybar -c ~/.config/waybar/test/config -s ~/.config/waybar/test/style.css &

