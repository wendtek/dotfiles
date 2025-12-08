export AWS_PAGER=""

alias awswhoami='aws sts get-caller-identity --output table; aws iam list-account-aliases --output table'
