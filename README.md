# Change MAC address and Hostname

The script is created following Sun Knudsen's [How to spoof MAC address and hostname automatically at boot on macOS](https://github.com/sunknudsen/privacy-guides/tree/master/how-to-spoof-mac-address-and-hostname-automatically-at-boot-on-macos) tutorial. The repo is set up so that people can clone and contribute to make it better.

## Installation
1. Clone the repo
2. Run `sudo cp ./local.spoof.plist /Library/LaunchDaemons/local.spoof.plist`
3. make sure com.apple.loginwindow does not exist: `sudo defaults read com.apple.loginwindow`
4. Run `sudo defaults write com.apple.loginwindow LogoutHook "./spoof-hook.sh"`
5. Restart the computer. Check and confirm the “Spoofed hostname” is random and "Spoofed MAC address" does not match "hardware MAC address" by running `./show-mac-info.sh`

## Uninstallation
1. `sudo unlink /Library/LaunchDaemons/local.spoof.plist`
2. Delete user default `sudo defaults delete com.apple.loginwindow LogoutHook`
3. set computer name, local hostname and hostname
   ```
   sudo scutil --set ComputerName "Your_name's MacBook Pro"
   sudo scutil --set LocalHostName "Your_names-MacBook-Pro"
   sudo scutil --set HostName "Your_names-MacBook-Pro"
   ```
# change-mac-address-and-host-name
