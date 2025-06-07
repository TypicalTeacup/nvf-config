# nvf-config
My configuration for [raf's nvf](https://github.com/NotAShelf/nvf).
## Usage
- Using `nix run`
  ```bash
  cachix use nvf                            # Optional, will save time and CPU resources
  nix run github:TypicalTeacup/nvf-config
  ```
- Using nix flakes (example home-manager flake)
  ```nix
  {
    description = "Home Manager configuration of typicalteacup";

    inputs = {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
      home-manager = {
        url = "github:nix-community/home-manager";
        inputs.nixpkgs.follows = "nixpkgs";
      };

      nvf-config = {
        url = "github:TypicalTeacup/nvf-config";
        inputs.nixpkgs.follows = "nixpkgs";
      };
    };

    outputs = {
      self,
      nixpkgs,
      home-manager,
      nvf-config,
      ...
    } @ inputs: let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in { 
      homeConfigurations."USERNAME" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = {
          inherit inputs;
        };

        modules = [
          ./home.nix
          {
            home.packages = [ nvf-config.packages.${system}.default ];
          }
        ];
      };
    };
  }
  ```
