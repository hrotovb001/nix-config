{ inputs, ... }:

inputs.nix-darwin.lib.darwinSystem {
  specialArgs = { inherit inputs; };
  modules = [
    ./configuration.nix
    inputs.nix-homebrew.darwinModules.nix-homebrew
    {
      nix-homebrew = {
        enable = true;
        user = "hero3";
      };
    }
    inputs.home-manager.darwinModules.home-manager
    {
      home-manager.useGlobalPkgs = true;
      home-manager.useUserPackages = true;
      home-manager.users.hero3 = { pkgs, ... }:
        { imports = [ inputs.nixvim.homeManagerModules.nixvim ./../home ]; };
    }
  ];
}

