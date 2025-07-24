{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;

  home.stateVersion = "25.05";

  catppuccin = {
    enable = true;
    flavor = "mocha";
    accent = "mauve";
  };

  home.packages = with pkgs; [
    jq
    git-crypt
    google-cloud-sdk
    tldr
    nixfmt
    nodejs_24
  ];

  home.shellAliases = {
    hms = "home-manager switch --flake ~/.config/home-manager";
    cat = "bat";
    ls = "eza";
    man = "tldr";
  };

  programs.bat.enable = true;
  programs.eza.enable = true;

  services.tldr-update.enable = true;

  imports = [
    ./modules/fonts.nix
    ./programs/direnv.nix
    ./programs/fish.nix
    ./programs/ghostty.nix
    ./programs/git.nix
    ./programs/starship.nix
    ./programs/vscode.nix
  ];
}
