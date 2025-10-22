eval "$(atuin init zsh)"

# Rebind history substring search keys if the plugin is used
if [[ " ${plugins[@]} " =~ " history-substring-search " ]]; then
  for key ('^[[A' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
  for key ('^[[B' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
fi
