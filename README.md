# discord-ubuntu-updater
Sick of downloading and installing discord, so I made my own bash script to do it automatically.

Inspired by [discordupdater](https://github.com/Abundita/discordupdater), but decided to take a more roundabout path, since that script doesn't work anymore. I can't find a build_info.json anymore. But this should work just as well, and hopefully be more future-proof since it engages in the update more in line with how Discord seems to want us to update.

# Install
`sudo sh -c 'wget -cO - https://raw.githubusercontent.com/FrankWhoee/discord-ubuntu-updater/main/updatediscord.sh >> /usr/local/bin/update-discord' && sudo chmod +x /usr/local/bin/update-discord`


# Run
`update-discord`
