# Bradley's NixOS Configuration

![Desired Outcome](images/desired-outcome.png)

I recently moved from Arch to NixOS, after trying to find a way to incorporate
easily declare a configuration for my laptop. If all goes well, the end result
should look like the above.

## How to use

- Clone this repository: `git clone git@github.com:bradb423/nixos-hosts.git && cd nixos-hosts`
- Run the script: `./link.sh`
- Then use the command `sudo nixos-rebuild switch` to take in the changes

## Using the list ordering utility

I like to keep my lists ordered alphabetically, and so the is a small program
`list-orderer` which will take a list within a config file, and order it.

Usage:

- You can install cargo using the shell template `shells/rust.nix`
- `cd list-orderer && cargo run filename list_start_line list_end_line`
- An ordered version of the list will be outputted to the terminal, and can
  then be copied into the respective file
- In future, I would like to improve this program to make it more automatic.
