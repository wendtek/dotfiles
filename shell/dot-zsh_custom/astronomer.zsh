
# Completions
# source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
# source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
# source "$(brew --prefix)/etc/bash_completion.d/az"
command -v flux >/dev/null && . <(flux completion zsh)

# Misc helper functions and aliases
atoken() {
  export ASTRO_TOKEN=$1
  export ASTROHUB_TOKEN=$1
}

tsh_kube_login() {
  local proxy_address=$1
  tsh kube login --proxy=${proxy_address} ${cluster_name}
}

tdev() {
  local cluster_name=${1:-dev-control-plane}
  tsh_kube_login tele.astronomer-dev.cloud:443
}

tstg() {
  local cluster_name=${1:-stage-control-plane}
  tsh_kube_login tele.astronomer-stage.cloud:443
}

tprd() {
  local cluster_name=${1:-production-control-plane}
  tsh_kube_login tele.astronomer.cloud:443
}
