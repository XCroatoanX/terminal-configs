set -g fish_greeting ""
# Run only in interactive sessions
if status is-interactive
    # Commands for interactive shells go here
end

# macOS-style prompt: "username@hostname ~ %"
function fish_prompt
    set_color normal
    echo -n (whoami)" "(prompt_pwd)" % "
end

# Abbreviations (aka aliases)
# Template: abbr -a -- your_abbreviation 'original command'
abbr -a -- tf 'terraform'
abbr -a -- kube 'kubectl'
abbr -a -- install 'sudo apt-get install'
abbr -a -- update 'sudo apt update && sudo apt upgrade -y'
abbr -a -- fullupdate 'sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y'
abbr -a -- sysinfo 'neofetch'

# opencode
fish_add_path /home/arst/.opencode/bin

abbr -a -- lg 'lazygit'

if status is-interactive
    # Terraform Abbreviations
    abbr -a tfi terraform init
    abbr -a tfp terraform plan
    abbr -a tfa terraform apply
    abbr -a tfd terraform destroy
    abbr -a tfv terraform validate
end

abbr -a -- c 'clear'
