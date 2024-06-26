# discord-ubuntu-updater
Sick of downloading and installing discord, so I made my own bash script to do it automatically.

Inspired by [discordupdater](https://github.com/Abundita/discordupdater), but decided to take a more roundabout path, since that script doesn't work anymore. I can't find a build_info.json anymore. But this should work just as well, and hopefully be more future-proof since it engages in the update more in line with how Discord seems to want us to update.

Also, you can run this command as much as you want! If the next version doesn't exist yet, the script will fail and nothing will happen.

# Install
`sudo sh -c 'wget -cO - https://raw.githubusercontent.com/FrankWhoee/discord-ubuntu-updater/main/updatediscord.sh >> /usr/local/bin/update-discord' && sudo chmod +x /usr/local/bin/update-discord`


# Run
`sudo update-discord`

# How it works
Like the original discordupater, this is a very simple script. This script finds the current version number by checking the `~/.config/discord` folder and then finds a folder name matching the regex of `[0-9]\+.[0-9]\+.[0-9]\+` (i.e. number.number.number) and increments it, then downloads the proper deb file and then unpacks and installs it using apt. Finally it removes the file downloaded so your file system doesn't get cluttered up.
