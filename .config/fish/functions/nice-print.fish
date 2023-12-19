function nice-print --argument message
  set_color -o magenta
  
  printf "%s\n" $message

  set_color normal
end
