
# Completions
command -v flux >/dev/null && . <(flux completion zsh)
command -v dataplane >/dev/null && . <(dataplane completion zsh)

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
  local cluster_name=${1:-stage-02-control-plane}
  tsh_kube_login tele.astronomer-stage.cloud:443
}

tprd() {
  local cluster_name=${1:-prod-centralus-01-control-plane}
  tsh_kube_login tele.astronomer.cloud:443
}

## Helps with bazel completion when working in monorepo with `//` paths.
# The upstream _bazel completer expands %workspace% in BAZEL_COMPLETION_PACKAGE_PATH
# to $PWD, which breaks `//pkg/<TAB>` from any subdirectory. Setting the env var
# to an absolute workspace root (no placeholder) makes the substitution a no-op
# and the completer works correctly. Refresh it on every cd.
_update_bazel_completion_path() {
  local dir=$PWD
  while [[ $dir != / ]]; do
    if [[ -f $dir/MODULE.bazel || -f $dir/WORKSPACE.bazel || -f $dir/WORKSPACE ]]; then
      export BAZEL_COMPLETION_PACKAGE_PATH=$dir
      return
    fi
    dir=${dir:h}
  done
  unset BAZEL_COMPLETION_PACKAGE_PATH
}
autoload -U add-zsh-hook
add-zsh-hook chpwd _update_bazel_completion_path
_update_bazel_completion_path
