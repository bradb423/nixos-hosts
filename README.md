# Bradley's NixOS Configuration

![Desired Outcome](images/desired-outcome.png)

I recently moved from Arch to NixOS, after trying to find a way to easily
declare a configuration for my laptop. If all goes well, the end result
should look like the above.

## How to use

- Clone this repository:
  `git clone https://github.com/bradb423/nixos-hosts.git && cd nixos-hosts`
- Make sure you enter the right disk and bootloader information in
  `system-config/core/bootloader.nix` and `hardware-configuration.nix`.
- Run the script: `./link.sh`
- Then use the command `sudo nixos-rebuild switch` to take in the changes

## Using the list ordering utility

I like to keep my lists ordered alphabetically, and so there is a small program
`list-orderer` which will take a list within a config file, and order it.

Usage:

- You can install cargo using the shell template `shells/rust.nix`
- `cd list-orderer`
- Then run the command `cargo run {filename} {list_start_line} {list_end_line}`
- An ordered version of the list will be outputted to the terminal, and can
  then be copied into the respective file
- In future, I would like to improve this program to make it more automatic.
