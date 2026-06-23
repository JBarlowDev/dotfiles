if status is-interactive
    # Commands to run in interactive sessions can go here
end

if type -q fzf
  fzf --fish | source
end

abbr g 'git status'
abbr gd 'git diff'

abbr lg 'lazygit'
abbr zelli 'zellij --layout compact options --theme tokyo-night --pane-frames false'

set fish_greeting

if type -q fastfetch
  fastfetch
end

# No longer using zellij
# if set -q ZELLIJ
# else
#   zellij --layout compact options --theme tokyo-night --pane-frames false
# end

