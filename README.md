# Fork of mjun
This is an attempt to centralise all the contributions made by people to the now abandoned [gnome-connection-manager](https://github.com/mjun/gnome-connection-manager) repo. See [here](https://github.com/mjun/gnome-connection-manager/compare/master...daradermody:master) for a list of updates. All credit goes to authors of the respective commits.

**Contributions encouraged**. It's much better for people to create a PR rather than a fork so everyone gets to benefit from your contributions. <3

# gnome-connection-manager
Tabbed SSH connection manager for GTK+ environments.

- Gnome Connection Manager is licensed under the GNU General Public License version 3
- It's designed in Glade and written in python, so it just needs PyGTK to run in any linux environment
- Can store passwords for easy access to hosts
- Supports multiple ssh tunnels for each host
- Unlimited vertical/horizontal window splitting. You can have as many visible consoles as you want
- Drag&Drop tabs between consoles
- Connect to multiple hosts with just one click
- Grouping hosts
- Cluster mode. Work on several hosts at the same time
- Customizable shortcuts
- Send custom commands to hosts

## Dependencies
Make sure you have installed the following packages (Ubuntu):

- python-gtk2 (>= 2.22)
- expect
- python-vte
- libglade2-0
- python-glade2

On Ubuntu you can install them with the following one-liner:

```shell
sudo apt-get install python-gtk2 expect python-vte libglade2-0 python-glade2
```

## Installing
Once you have dependencies installed, it's as simple as placing gnome-connection-manager directory to a location of your choice and typing in shell:

```shell
python gnome_connection_manager.py
```

The application will read your `LANG` environment variable and load appropriate translation file (if your language is 
supported), otherwise it will fallback to english.

If you want to start gnome-connection-manager with specific language start it with LANGUAGE parameter followed by language code, 
like so:

```shell
LANGUAGE=de_DE python gnome_connection_manager.py
```

If you want to run the application from menu/launcher you can create .desktop file in your `~/.local/share/applications` directory. Assuming you placed gnome-connection-manager source in directory ~/.gnome-connection-manager/ your .desktop file could look like this:

```text
[Desktop Entry]
Version=1.0
Encoding=UTF-8
Name=Gnome Connection Manager
Comment=A simple ssh connection manager for gnome
GenericName=Connection Manager
Exec=~/.gnome-connection-manager/gnome_connection_manager.py
Terminal=false
Type=Application
Icon=~/.gnome-connection-manager/icon.png
Categories=GTK;GNOME;Network;
StartupWMClass=gnome_connection_manager.py
```

Replace USERNAME in examples above with your username.

## Installing on Ubuntu 19.04+
Because python-vte is [not available in 19.04+](https://www.mail-archive.com/desktop-packages@lists.launchpad.net/msg579213.html) (it's been replaced with GObjectIntrospection), you have to install the library and some of its dependencies manually:
- [libvte-common (0.28.2-5ubuntu5)](https://packages.ubuntu.com/cosmic/libvte-common)
- [libvte9 (0.28.2-5ubuntu5)](https://packages.ubuntu.com/cosmic/libvte9)
- [python-vte (0.28.2-5ubuntu5)](https://packages.ubuntu.com/cosmic/python-vte)

If anyone knows enough about python-vte and GObject Introspection, their advice or contribution on switching would be immensely appreciated.

# Note about the author
This is a fork of a [fork](https://github.com/sirkuttin/gnome-connection-manager) of [Matko Jun's fork](https://github.com/mjun/gnome-connection-manager) of [Renzo Bertuzzi's work](http://kuthulu.com/gcm/). The reason I made this 27th fork relating Jun's repo was to hopefully start getting contributions all flowing into the same place, as opposed to getting fixes and updates distributed amonst the other repos. Fixes and PRs welcome!
