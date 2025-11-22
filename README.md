# WayDots
My dwl config files.

# Installation

It's quite simple, just copy all dirs except `dwl` to `$HOME/.config/`.

Install the required packages:
- rofi (formerly rofi-wayland)
- foot (terminal)
- mako (notifications)
- tmux (because it's nice)
- fish (even nicer)

Build And Install `dwl` (Check the `config.h` file for more informations):

```sh
cd dwl
sudo make install clean
```

Create a `.dwlrc` file, this is similar to the `.xinitrc` file on X11.

```sh
echo "#!/bin/sh" > ~/.dwlrc
chmod +x ~/.dwlrc // make sure to run this so the file can be executed
```

And finally start the dwl session:
```sh
dwl
```

# Notes
- For neovim config check the [Xdots](https://github.com/yukiisen/Xdots) Repository.
- This is quite empty because I prefer to have more space on screen.
- Hyprland is for femboys.
