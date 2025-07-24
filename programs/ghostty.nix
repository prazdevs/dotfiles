{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;
    settings = {
      command = "$HOME/.nix-profile/bin/fish --login";
      font-family = "MonoLisa, Symbols Nerd Font Mono";
    };
  };
}
