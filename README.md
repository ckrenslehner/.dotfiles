Dotfiles directory for cross-platform development using [rotz](https://github.com/volllly/rotz) as dotfile manager.

## Installation

1. Clone the repository to your local machine
2. Install [rotz](https://github.com/volllly/rotz)
3. Run `rotz install` to install the tools
4. Run `rotz link` to link the dotfiles directory to your home directory

## Testing 

You can use the `--dry-run` flag to test the correctness of the files

- `rotz --dry-run install` - This will show you what files would be installed without actually installing them
- `rotz --dry-run link` - This will show you what files would be linked without actually linking them

## Manual installation required: 
- Rustup with external dependencies! https://www.rust-lang.org/tools/install
- Nerdfonts
  - [FiraCode](https://www.nerdfonts.com/font-downloads)
- Binutils and gcc within Msys2
  - GCC: pacman -S mingw-w64-x86_64-gcc
  - Binutils: pacman -S mingw-w64-x86_64-binutils
  - Edit path environment variable to include Msys2
    - ~/scoop/apps/msys2/...

Install scoop on windows or brew on ubuntu. See tools/scoop and tools/brew


## Git config template

```
# Read more about SSH config files: https://linux.die.net/man/5/ssh_config

Host github.com-ckrenslehner
    HostName github.com
    User git
    IdentityFile C:/Users/USER/.ssh/github-ckrenslehner

Host github.com-work
    HostName github.com
    User git
    IdentityFile C:/Users/USER/.ssh/github-work

Host alias
    HostName hostname
    User user
```