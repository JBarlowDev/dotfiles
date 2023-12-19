function confirm-action
  while true
    read -l -P "Continue? [Y/n] " confirmation

    switch $confirmation
      case Y
        return 0
      case '' N n
        return 1
    end
  end
end
