{
  description = "mininix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    waybar = {
      url = "github:alexays/waybar";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    catppuccin = {
      url = "github:catppuccin/nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
    };
  };

   outputs = { self, nixpkgs, home-manager, catppuccin, ... }@inputs:
   let
     system = "x86_64-linux";
   in {
    nixosConfigurations.mininix = nixpkgs.lib.nixosSystem {
      inherit system;

      specialArgs = {
        inherit system;
        inherit catppuccin;
      };

     pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
    };

   modules = [
     ./configuration.nix

     catppuccin.nixosModules.catppuccin
     # Integrate Home Manager as a NixOS module
     home-manager.nixosModules.home-manager
       {
         home-manager.useGlobalPkgs = true;
         home-manager.useUserPackages = true;
         home-manager.backupFileExtension = "hm-bak";

         # Ensure HM modules can access flake inputs
         home-manager.extraSpecialArgs = {inherit inputs system catppuccin;};

         # Import home/home.nix
         home-manager.users.natinix = {
           imports = [
             ./home/home.nix
             catppuccin.homeModules.default
            ];
          };
        }
      ];
    };
  };
}

