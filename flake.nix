{
  description = "praz' home-manager configuration";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.xz";
    catppuccin.url = "github:catppuccin/nix";
    mac-app-util.url = "github:hraban/mac-app-util";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      nixpkgs,
      catppuccin,
      mac-app-util,
      home-manager,
      ...
    }:
    let
      mkHome = username: home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.aarch64-darwin;
        modules = [
          { home = { inherit username; homeDirectory = "/Users/${username}"; }; }
          ./home.nix
          catppuccin.homeModules.catppuccin
          mac-app-util.homeManagerModules.default
        ];
      };
    in
    {
      homeConfigurations = {
        # <hostname> = mkHome "<username>";
        sachabouillez = mkHome "sachabouillez";
      };
    };
}
