{ pkgs, ... }:

let
  fonts = pkgs.callPackage ../packages/fonts.nix { };
in
{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    fonts
    nerd-fonts.symbols-only
  ];
}
