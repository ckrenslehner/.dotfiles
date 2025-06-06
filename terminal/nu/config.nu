# config.nu
#
# Installed by:
# version = "0.103.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.

$env.config = {
    show_banner: true,
    completions: {
        algorithm: "fuzzy"
    }

    shell_integration: {
        # Do not emit newlines in wezterm when typing into nu
        osc133: false,
    }
}

# Needs to be at the end!
source ~/.cache/starship/init.nu
source ~/.cache/zoxide/init.nu