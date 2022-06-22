# Bradley's NixOS Configuration

I recently moved from Arch to NixOS, after trying to find a way to incorporate
my dotfiles in a reproducible manner.

## How to use

- Clone this repository: `git clone git@github.com:bradb423/nixos-hosts.git && cd nixos-hosts`
- run the script: `./link.sh`
- Then use the command `sudo nixos-rebuild switch` to take in the changes

## Final bits of setup

As of right now, I cannot find a way to set my background and shortcuts that I
like for GNOME. So think must be done manually. `link.sh` places the background
image in `/home/brad/Pictures`, and so GNOME can pick up the image.
I also like my GNOME in dark mode, and as far as I am aware, this needs to be
done manually too.
