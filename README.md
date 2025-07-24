# dotfiles

![nix-pkgs: unstable][nix-pkgs-src]
![MIT license][license-src]

> My personal nix-based dotfiles config.

## Installation

1. Install [Nix](https://nixos.org) (or [Lix](https://lix.systems)):

```sh
curl -sSf -L https://install.lix.systems/lix | sh -s -- install
```

2. Clone the repository:

```
git clone https://github.com/prazdevs/dotfiles.git ~/.config/home-manager
```

3. Run a temporary shell with `home-manager`:

```sh
nix-shell -p home-manager
```

4. Switch to the config:

```sh
home-manager switch --flake ~/.config/home-manager
```

## Usage

To apply changes, run the aliased `home-manager switch` with:

```sh
hms
```

## Hosts

Declare hosts in the `flake.nix` under `homeConfigurations`

```nix
homeConfigurations = {
  hostname = mkHome "username";
};

```

[nix-pkgs-src]: https://img.shields.io/badge/unstable-89dceb?style=flat-square&logo=nixos&logoColor=89dceb&label=nix-pkgs&labelColor=313244
[license-src]: https://img.shields.io/badge/MIT-89dceb?style=flat-square&logoColor=89dceb&label=license&labelColor=313244
