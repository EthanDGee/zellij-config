# Install various plugins
mkdir -p ~/.config/zellij/plugins

# install zellij forgot - a simple floating window that shows keybinds
curl -L https://github.com/karimould/zellij-forgot/releases/download/0.4.2/zellij_forgot.wasm -o ~/.config/zellij/plugins/zellij-forgot.wasm

# install room - a simple tab switching floating window
curl -L "https://github.com/rvcas/room/releases/latest/download/room.wasm" -o ~/.config/zellij/plugins/room.wasm
