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

- You can install cargo using the shell template `nix-shell shells/rust.nix`
- `cd list-orderer`

```console
The list ordering utility provides the ability to aplhabetically order items in
lists. This is useful for ordering the lists of packages in this repository,
such as in `user-config/personal-packages.nix`


Usage: list-orderer <FILENAME> <START_LINE> <END_LINE>

Arguments:
  <FILENAME>    The name of the file to look into
  <START_LINE>  The starting line to start ordering from
  <END_LINE>    The ending line to stop ordering at

Options:
  -h, --help     Print help
  -V, --version  Print version
```
