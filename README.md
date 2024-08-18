<h3 align="center">~/dotfiles</h3>

I run Void Linux on an Intel i7-8550U CPU.
My setup includes the i3 window manager with it's i3status bar.
I use Picom for window transparency effects, Alacritty as my terminal emulator, and manage terminal sessions with Tmux.
Neovim serves as my primary text editor.

### Setup

Ensure that you have `git` and `stow` installed on your system:

```bash
sudo xbps-install git stow -y
```

- Clone the dotfiles repository into your `$HOME`directory.

  ```bash
  git clone https://github.com/iambasantarai/dotfiles.git
  ```

- Navigate to the `dotfiles` directory

  ```bash
  cd dotfiles
  ```

- Use GNU stow to create the symlinks
  ```bash
  stow .
  ```

### Personal

Initialize and update the git submodules:

```bash
git submodule update --init --recursive
```

### Configure touchpad

Configure touchpad in x11 (X Window System)

- Create a `xorg.conf.d` directory
  ```bash
  sudo mkdir /etc/X11/xorg.conf.d
  ```

- Add configuration file
  ```bash
  sudo ~/dotfiles/cp 90-touchpad.conf /etc/X11/xorg.conf.d/
  ```

- Reboot the system
  ```bash
  sudo reboot
  ```

### Manage user directories

- Install `xdg-utils`, `xdg-user-dirs` and generate "well known" user directories
  ```bash
  xdg-user-dirs-update
  ```
