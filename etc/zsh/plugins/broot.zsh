function br {
	local cmd cmd_file code
	cmd_file=$(mktemp)
	if broot --outcmd "$cmd_file" "$@"; then
		cmd=$(<"$cmd_file")
		command rm -f "$cmd_file"
		eval "$cmd"
	else
		code=$?
		command rm -f "$cmd_file"
		return "$code"
	fi
}
