{
  description = "My nvf configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
  }: let
    system = "x86_64-linux";
    configuration = nvf.lib.neovimConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [./config.nix];
    };
  in {
    packages.${system}.default = configuration.neovim;
  };
}
