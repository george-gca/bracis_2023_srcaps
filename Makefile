build:
	# Node Version Manager
	if ! hash nvm 2>/dev/null; then
		get_latest_github_raw_no_v() {
			# use it for when the link for the download doesn't have a version included in the name of the file
			# e.g.: https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh
			# usage: get_latest_github_raw_no_v "user/repo" "filename"
			version=$(curl --silent "https://api.github.com/repos/$1/releases/latest" |  # Get latest release from GitHub api
			grep '"tag_name":' |                                             # Get tag line
			sed -E 's/.*"([^"]+)".*/\1/')                                    # Pluck JSON value
			echo "https://raw.githubusercontent.com/$1/$version/"$2
		}

		site=$(get_latest_github_raw_no_v "nvm-sh/nvm" "install.sh")
		curl -o- $site | bash
		. $HOME/.bashrc
	fi

	# Node (latest version)
	if ! node nvm 2>/dev/null; then
		nvm install $(nvm ls-remote | grep -i latest | tail -n 1 | sed -ne 's/[^v0-9]*\(\([0-9]*\.\)\{0,4\}[0-9][^.]\).*/\1/p' | xargs)
	fi

run:
	npm run dev

export:
	npm run export_full
