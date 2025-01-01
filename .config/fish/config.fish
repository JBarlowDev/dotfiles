if status is-interactive
    # Commands to run in interactive sessions can go here
end

fzf --fish | source

abbr g 'git status'
abbr gd 'git diff'

abbr lg 'lazygit'
abbr zelli 'zellij --layout compact options --theme tokyo-night --pane-frames false'

set fish_greeting
neofetch

# No longer using zellij
# if set -q ZELLIJ
# else
#   zellij --layout compact options --theme tokyo-night --pane-frames false
# end

