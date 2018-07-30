# Find lexically last directory that starts with provided parameter and cd into it
cdl () {
	local cands=("$1"*/)
	# shellcheck disable=SC2164
	cd "${cands[-1]}"
}

# Fold text file at spaces to 80 columns
wrap () {
	fold --spaces "$1" > "$1".$$ && mv "$1".$$ "$1"
}

# Local function definitions
if [[ -f $HOME/.functions_local.bash ]]; then
	# shellcheck source=/dev/null
	. "$HOME/.functions_local.bash"
fi
