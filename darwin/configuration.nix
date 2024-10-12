{ inputs, pkgs, ...}:

{
  imports = [ ./modules ];

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages =
    [ pkgs.sshfs
      pkgs.jq
    ];

  nixpkgs.config.allowUnfree = true;

  homebrew = {
    enable = true;
    casks = [
      "firefox"
      "macfuse"
      "discord"
    ];
    onActivation.cleanup = "zap";
  };

  users.users.hero3 = {
    name = "hero3";
    home = "/Users/hero3";
  };

  security = { pam.enableSudoTouchIdAuth = true; };

  system = {
    defaults = {
      dock = {
        autohide = true;
        mru-spaces = false;
        static-only = true;
      };
      NSGlobalDomain = {
        _HIHideMenuBar = true;
      };
    };
  };

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  # nix.package = pkgs.nix;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";

  # Create /etc/zshrc that loads the nix-darwin environment.
  programs.zsh = {
    enable = true;
    shellInit = ''
      alias vim=nvim
    '';
  };
  # programs.fish.enable = true;

  # Set Git commit hash for darwin-version.
  system.configurationRevision = inputs.self.rev or inputs.self.dirtyRev or null;

  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 5;

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "x86_64-darwin"; 
}
