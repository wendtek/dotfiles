## This has customizations to the agnoster theme

# agnoster doesn't print the name or host if the user is the default user
export DEFAULT_USER="kevin.wendt"

# Check if current prompt is agnoster
if [[ "$ZSH_THEME" == "agnoster" ]]; then
  # Customize the prompt elements here
  # For example, change the color of the user@host segment
  PROMPT='%F{cyan}%n@%m%f %F{yellow}%~%f $(git_prompt_info)%# '
fi
