# Custom Zellij Configuration

This repository contains a highly customized Zellij configuration designed for an enhanced and personalized terminal multiplexer experience. It prioritizes a clean slate for keybindings, integrates several useful plugins, and changes the default theme.

## Features

*   **Custom Keybindings**: All default Zellij keybindings are cleared, and a comprehensive set of custom keybindings is defined across various modes (pane, tab, resize, move, scroll, session, tmux, etc.). Many bindings are remapped to avoid conflicts with other tools (e.g., `lazyvim`).
    *   `Ctrl m`: Activates `move` mode.
    *   `Ctrl Alt q`: Quits Zellij.
    *   `Ctrl Shift t`: Creates a new tab and immediately prompts for renaming it to enhance organization.
*   **Plugin Integration**:
    *   **zellij-forgot**: A plugin that provides a floating window displaying keybindings as a quick reference/cheatsheet. Activated by `Ctrl Shift h`.
    *   **room**: A floating window plugin for quick and intuitive tab switching. Activated by `Ctrl Shift s`.
    *   **zellij-favs**: A plugin for managing and saving favorite Zellij sessions, allowing for easy resurrection and organization. Activated by `Ctrl Alt f`.
*   **Visual Customization**:
    *   **Theme**: Utilizes the included `lucario` theme.
    *   **Default Layout**: Employs a custom `starter` layout, which is a modified compact layout with the taskbar positioned at the top.
    *   **Startup Tips**: Disabled for a cleaner and less cluttered startup experience.

## Installation and Setup

### Recommended Method: Clone Directly to `~/.config/zellij`

The easiest way to set up this configuration is to clone the repository directly into your `~/.config/zellij` directory. This ensures all configuration files and layouts are in the correct place automatically.

1.  **Backup Existing Zellij Config (Optional but Recommended)**:
    If you have an existing Zellij configuration, you might want to back it up first:
    ```bash
    mv ~/.config/zellij ~/.config/zellij_backup
    ```

2.  **Clone the Repository**:
    ```bash
    git clone https://github.com/EthanDGee/zellij-config ~/.config/zellij
    ```

3.  **Install Plugins**:
    Navigate into the cloned directory and run the provided installation script:
    ```bash
    cd ~/.config/zellij
    chmod +x install.sh
    ./install.sh
    ```

### Alternative Method: Clone Elsewhere and Symlink/Copy

If you prefer to keep this repository in a different location (e.g., in a dotfiles repository), you can clone it there and then create symbolic links or copy the necessary files.

1.  **Clone the Repository**:
    ```bash
    git clone https://github.com/EthanDGee/zellij-config.git ~/.config/zellij
    ```

2.  **Create Symlinks (or Copy Files)**:
    *   Backup your existing Zellij config (optional): `mv ~/.config/zellij ~/.config/zellij_backup`
    *   Create the Zellij config directory if it doesn't exist: `mkdir -p ~/.config/zellij`
    *   Symlink `config.kdl`:
        ```bash
        ln -sf ~/dotfiles/zellij-config/config.kdl ~/.config/zellij/config.kdl
        ```
    *   Symlink the `layouts` directory:
        ```bash
        ln -sf ~/dotfiles/zellij-config/layouts ~/.config/zellij/layouts
        ```
    *   Symlink the `plugins` directory:
        ```bash
        ln -sf ~/dotfiles/zellij-config/plugins ~/.config/zellij/plugins
        ```
    *(If copying instead of symlinking, use `cp -r` for directories and `cp` for files.)*

3.  **Install Plugins**:
    Navigate to the cloned repository and run the installation script:
    ```bash
    cd ~/dotfiles/zellij-config
    chmod +x install.sh
    ./install.sh
    ```
    (Note: If you symlinked the `plugins` directory, the `install.sh` script will still place the `.wasm` files in the correct `~/.config/zellij/plugins` location via the symlink)

### Manual Plugin Installation (If Not Using `install.sh`)

If you choose not to use the `install.sh` script, you'll need to manually download the plugins. This is generally only needed if `install.sh` fails or you have very specific requirements.

1.  **Ensure Plugin Directory Exists**:
    ```bash
    mkdir -p ~/.config/zellij/plugins
    ```
2.  **Download `zellij-forgot`**:
    ```bash
    curl -L https://github.com/karimould/zellij-forgot/releases/download/0.4.2/zellij_forgot.wasm -o ~/.config/zellij/plugins/zellij-forgot.wasm
    ```
3.  **Download `room`**:
    ```bash
    curl -L "https://github.com/rvcas/room/releases/latest/download/room.wasm" -o ~/.config/zellij/plugins/room.wasm
    ```
4.  **Download `zellij-favs`**:
    ```bash
    curl -L https://github.com/JoseMM2002/zellij-favs/releases/download/v1.0.1/zellij-favs.wasm -o ~/.config/zellij/plugins/zellij-favs.wasm
    ```
5.  **Create `zellij-favs` Cache Directory**:
    ```bash
    mkdir -p ~/.cache/zellij-favs/
    ```

## Usage

After completing the installation steps, simply start Zellij as you normally would:

```bash
zellij
```

Your Zellij session will now load with the custom keybindings, plugins, theme, and layout defined in this configuration.

Contributions are welcome!!!
