{ ... }:

{
  programs.fish = {
    enable = true;
    shellInit = ''
      set fish_greeting
    '';
    loginShellInit = ''
      fish_add_path --move --prepend $HOME/.nix-profile/bin /nix/var/nix/profiles/default/bin
    '';
  };
}
