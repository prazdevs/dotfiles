{ ... }:

{
  programs.fish = {
    enable = true;
    shellInit = ''
      set fish_greeting
      fnm env --use-on-cd --version-file-strategy recursive --corepack-enabled --resolve-engines --shell fish | source
    '';
    loginShellInit = ''
      fish_add_path --move --prepend $HOME/.nix-profile/bin /nix/var/nix/profiles/default/bin
    '';
  };
}
