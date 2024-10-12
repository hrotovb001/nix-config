{ config, pkgs, ... }:

{
  imports = [ ./nixvim ./git.nix ];

  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = "0.8";
      hide_window_decorations =  "yes";
      confirm_os_window_close = "0";
    };
    themeFile = "tokyo_night_storm";
  };

  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host crossdim
        HostName 34.67.51.12
    User bohdanhrotovytskyy
    IdentityFile ~/.ssh/id_rsa
    '';
  };

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };

  programs.starship = {
    enable = true;
    settings = {
      shlvl.disabled = false;
      shell.disabled = false;
    };
  };

  home.stateVersion = "24.11";
}

