function arch-update
  nice-print "⬆️ Starting the update proccess"
  nice-print "Following: https://wiki.archlinux.org/title/system_maintenance"
  nice-print "Check for any updates that need manual actions"
  xdg-open https://archlinux.org/

  if confirm-action
    nice-print "Pacman update"
    sudo pacman -Syu
    nice-print "AUR update"
    yay -Syu
    nice-print "All done. Should reboot."
  end
end
