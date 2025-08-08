{
  description = "korben's nix-darwin flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix";
    home-manager = {
      # url = "github:nix-community/home-manager/release-24.11";
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nix-darwin,
      nixpkgs,
      ...
    }:

    let
      configuration =
        { pkgs, ... }:
        {
          networking.hostName = "Korbens-MacBook-Pro";
          nixpkgs.config.allowUnfreePredicate =
            pkg:
            builtins.elem (nixpkgs.lib.getName pkg) [
              "discord"
              "slack"
              # "signal-desktop"
              # "raycast"
            ];

          nix.nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
          # Set Git commit hash for darwin-version.
          system.configurationRevision = self.rev or self.dirtyRev or null;
        };
    in
    {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#Korbens-MacBook-Pro
      darwinConfigurations."Korbens-MacBook-Pro" = nix-darwin.lib.darwinSystem {
        # system.stateVersion = 5;
        specialArgs = { inherit inputs; };

        # modules = [ configuration ];
        modules = [
          ./laptop/configuration.nix
          ./laptop/brew.nix
        ];
        # nixpkgs.config.allowUnfree = true;
      };

      # Expose the package set, including overlays, for convenience.
      darwinPackages = self.darwinConfigurations."Korbens-MacBook-Pro".pkgs;
    };
}
