.ONESHELL:

.PHONY: help
help:
	echo 'make pi   - Make binary suitable for Raspberry Pi 3'
	echo 'make host - Make binary suitable for current host machine'

.PHONY: check_cargo
check_cargo:
	if ! command -v cargo >/dev/null; then
	    echo 'You need to install cargo. You most likely need to do this using "rustup"'
		exit 1
	fi

.PHONY: check_cross
check_cross: check_cargo
	if ! command -v cross >/dev/null; then
	    echo 'To build for other machine than the current, cross is needed:'
		echo '    cargo install cross'
		exit 1
	fi

.PHONY: pi
pi: check_cross
	RUSTFLAGS='-C target-feature=+crt-static' cross build --target aarch64-unknown-linux-gnu

.PHONY: host
host: check_cargo
	cargo build

