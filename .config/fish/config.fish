source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end
alias timeshift 'pkexec env (env) /usr/bin/timeshift-launcher &'
function firefox
    env __NV_PRIME_RENDER_OFFLOAD=1 __VK_LAYER_NV_optimus=NVIDIA_only __GLX_VENDOR_LIBRARY_NAME=nvidia firefox $argv
end


function set_brightness
    if test (count $argv) -eq 0
        echo "Usage: set_brightness <brightness_level>"
        return 1
    end

    set brightness_level $argv[1]

    # Check if the brightness value is numeric
    if not string match -qr '^[0-9]+$' $brightness_level
        echo "Error: Brightness must be a positive integer."
        return 1
    end

    # Set the brightness using the echo command with sudo tee
    echo $brightness_level | sudo tee /sys/class/backlight/intel_backlight/brightness > /dev/null

    if test $status -eq 0
        echo "Brightness set to $brightness_level"
    else
        echo "Error: Unable to set brightness. Please check your permissions."
        return 1
    end
end

# Alias to make vscode use Nvidia (Fix for the DRM Issue)

alias code-insiders='prime-run code-insiders'
alias code='prime-run code-insiders'
alias discord='prime-run discord'
alias google-hchrome-beta='prime-run google-chrome-beta'


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added to enable neovim without padding 
alias nvim='$HOME/scripts/nvim_nopadding.sh'

