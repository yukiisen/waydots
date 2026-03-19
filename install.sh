cd dwl
doas make install clean
cd ..

cp ./fish/ ./rofi/ ./zathura/ ./foot/ ./mako/ ~/.config/ -r --verbose
cp ./tmux.conf ~/.tmux.conf
cp ./.dwlrc ~/.dwlrc
