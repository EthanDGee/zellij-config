# Install various plugins
mkdir -p ~/.config/zellij/plugins

# zellij forgot - a simple floating window that shows keybinds
curl -L https://github.com/karimould/zellij-forgot/releases/download/0.4.2/zellij_forgot.wasm -o ~/.config/zellij/plugins/zellij-forgot.wasm

# room - a simple tab switching floating window
curl -L "https://github.com/rvcas/room/releases/latest/download/room.wasm" -o ~/.config/zellij/plugins/room.wasm

# zellij-favs - way of easily saving favorite sessions, and flushing unwanted ones
curl -L https://github.com/JoseMM2002/zellij-favs/releases/download/v1.0.1/zellij-favs.wasm -o ~/.config/zellij/plugins/zellij-favs.wasm
mkdir -p ~/.cache/zellij-favs/

# status-bar - a simple (but opinionated status bar)
curl -L https://github.com/cristiand391/zj-status-bar/releases/download/0.3.0/zj-status-bar.wasm -o ~/.config/zellij/plugins/status-bar.wasm
