# Copy files to ~/.config/waybar
cp config ~/.config/waybar/test
cp style.css ~/.config/waybar/test
cp modules.json ~/.config/waybar/test

killall waybar
waybar -c ~/.config/waybar/test/config -s ~/.config/waybar/test/style.css &