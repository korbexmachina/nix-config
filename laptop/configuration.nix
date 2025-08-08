{
  pkgs,
  nix-darwin,
  ...
}@args:
{
  nixpkgs.hostPlatform = {
    system = "aarch64-darwin";
  };

  system.primaryUser = "korben";
  system.stateVersion = 6;

  environment.systemPackages = import ./packages.nix args;

  # Enable touch-id authentication for sudo
  security.pam.services.sudo_local = {
    enable = true;
    reattach = true;
    touchIdAuth = true;
  };
  system.defaults.NSGlobalDomain._HIHideMenuBar = true;
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget

  # stylix = {
  #   enable = true;
  #   base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
  # };
  #
  # Create /etc/zshrc that loads the nix-darwin environment.
  programs = {
    gnupg.agent.enable = true;
    zsh.enable = true; # default shell on catalina
  };

  programs.zsh = {
    interactiveShellInit = ''
      if [[ $(${pkgs.procps}/bin/ps -p $PPID -o comm) != "fish" && -z ''${ZSH_EXUCTION_STRING} ]]
      then
        [[ -o login ]] && LOGIN_OPTION='--login' || LOGIN_OPTION=""
        exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
      fi
    '';
  };

  # Services to run at login
  services.aerospace = {
    enable = true;
    settings = {
      default-root-container-layout = "tiles";
      key-mapping.preset = "qwerty";
      gaps = {
        inner.horizontal = 10;
        inner.vertical = 10;
        outer.left = 10;
        outer.bottom = 10;
        outer.top = 10;
        outer.right = 10;
      };
      mode.main.binding = {

        # See: https://nikitabobko.github.io/AeroSpace/commands#layout
        alt-slash = "layout tiles horizontal vertical";
        alt-comma = "layout accordion horizontal vertical";

        # See: https://nikitabobko.github.io/AeroSpace/commands#focus
        alt-h = "focus left";
        alt-j = "focus down";
        alt-k = "focus up";
        alt-l = "focus right";

        # See: https://nikitabobko.github.io/AeroSpace/commands#move
        alt-shift-h = "move left";
        alt-shift-j = "move down";
        alt-shift-k = "move up";
        alt-shift-l = "move right";

        # See: https://nikitabobko.github.io/AeroSpace/commands#resize
        alt-shift-minus = "resize smart -50";
        alt-shift-equal = "resize smart +50";

        # See: https://nikitabobko.github.io/AeroSpace/commands#workspace
        alt-1 = "workspace 1";
        alt-2 = "workspace 2";
        alt-3 = "workspace 3";
        alt-4 = "workspace 4";
        alt-5 = "workspace 5";
        alt-6 = "workspace 6";
        alt-7 = "workspace 7";
        alt-8 = "workspace 8";
        alt-9 = "workspace 9";

        # See: https://nikitabobko.github.io/AeroSpace/commands#move-node-to-workspace
        alt-shift-1 = "move-node-to-workspace 1";
        alt-shift-2 = "move-node-to-workspace 2";
        alt-shift-3 = "move-node-to-workspace 3";
        alt-shift-4 = "move-node-to-workspace 4";
        alt-shift-5 = "move-node-to-workspace 5";
        alt-shift-6 = "move-node-to-workspace 6";
        alt-shift-7 = "move-node-to-workspace 7";
        alt-shift-8 = "move-node-to-workspace 8";
        alt-shift-9 = "move-node-to-workspace 9";

        # See: https://nikitabobko.github.io/AeroSpace/commands#workspace-back-and-forth
        alt-tab = "workspace-back-and-forth";
        # See: https://nikitabobko.github.io/AeroSpace/commands#move-workspace-to-monitor
        alt-shift-tab = "move-workspace-to-monitor --wrap-around next";

        # See: https://nikitabobko.github.io/AeroSpace/commands#mode
        alt-shift-semicolon = "mode service";
        # workspace-to-monitor-force-assignment = {
        #   "1" = "^built-in retina display$";
        #   "2" = "^built-in retina display$";
        #   "3" = "^built-in retina display$";
        #   "4" = "^built-in retina display$";
        #   "5" = "^built-in retina display$";
        #   "6" = "secondary";
        #   "7" = "secondary";
        #   "8" = "secondary";
        #   "9" = "secondary";
        # };

        # Shortcuts
        # alt-w = "/run/current-system/sw/bin/wezterm";
      };
      exec-on-workspace-change = [
        "/bin/bash"
        "-c"
        "/run/current-system/sw/bin/sketchybar --trigger aerospace_workspace_change FOCUSED_WORKSPACE=$AEROSPACE_FOCUSED_WORKSPACE"
      ];
    };
  };
  services.jankyborders = {
    enable = true;
    active_color = "0xffb4befe";
    inactive_color = "0xff6c7086";
    hidpi = true;
    order = "above";
  };
  services.sketchybar.enable = true;

  # system.defaults.spaces.spans-displays = true;

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";
}
