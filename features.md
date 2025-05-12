# Features
Below is a list of the features this repository's dotfiles consist of:
## i3
- **Gaps:** Gaps between windows and the display area;
- **Un/focused Windows:** Focused have a white-ish border around them, unfocused don't;
- **Shorcuts for specific changeable apps:** Inside i3's config, there are lines like ``set $browser chromium``, and shortcuts for apps are tied to such variables, like, ``bindsym $mod+F2 exec $browser``. By this, you only need to change the variables' executable command and use the variables throughout the file.
## Conky
- ### Launch Script:
- **Variables controlling:** Variables' management which are used for sizing and scaling, calculated depending on the screen's resolution. Used to try and make Conky look the same in, for example, a 4k and a 720p monitor, without sizing & scaling issues.
- ### Configuration dotfile:
- **Date, Day, Mascot:** Section displaying the date, time, and OpenMandriva's mascot, Chwido;
- **System Monitoring:** Section displaying system information about CPU and RAM usage, and top 4 heaviest processes of each section, with an 0.7s update interval;
- **System Information:** Section displaying ``<username>@<hostname>`` and below, the kernel version in use;
- **Shortcuts List:** Section displaying a brief list of the top shortcuts a user should need to use the environment, as well as the mod key.
## Polybar
- **Multiple dotfiles, ran by one script:** The script for launching Polybar executes the bar with the dotfile as config.ini in its directory, which in itself has the other dotfiles, modules.ini, colors.ini and etc, linked in it;
- **Extra modules:** By default, this configuration only includes the following: App menu, Workspaces, Window Name, Volume, Keyboard, Systray (showing nm-applet), Power Menu. But there are extra modules such as Temperature, CPU, Memory, Filesystem, Backlight, PulseAudio etc, available in modules.ini and user_modules.ini;
- **In-built Rofi menus** The App Menu and Power Menu use Rofi for making them show up. They also have separate launch scripts, located inside the Polybar directories, and use different colors from the ones Polybar has. While being different dotfiles from what the shortcuts of i3 use, they are identical copies of one-another, just duplicated for ease of testing and management.
## i3lock-color
- **Blurred Background:** i3lock-color shows a blurred background when in locked mode, using ImageMagick to create it;
- **Scaling:** i3lock-color's circle scales depending on the screen's resolution;
- **Time & Date:** Shows a generic view of time in the ``HH:MM:SS`` format, and a generic view of the date in the ``DAY, DD:MON:YYYY`` format;
- **Theming:** Themed to match OM's color scheme.
