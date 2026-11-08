{
  homebrew = {
    enable = true;
    onActivation.cleanup = "uninstall";
    caskArgs.no_quarantine = true;
    taps = [
      # "arcboxlabs/tap"
      "can1357/tap"
    ];
    brews = [
      "omp"
      "xcodegen"
      "atuin"
      "imagemagick"
      "rbenv"
      "container"
      "hugo"
    ];
    casks = [
      # Productivity
      "fantastical"
      "bitwarden"
      "cardhop"
      "fantastical"
      "insomnia"
      "obs"
      "raycast"
      "anki"
      "lunatask"

      # Tools
      "claude"
      "docker-desktop"
      "karabiner-elements"
      "imageoptim"
      "rawtherapee"
      "handbrake-app"
      "ghostty"
      "vscodium"
      # "arcboxlabs/tap/arcbox"
      "osaurus"
      # "openclaw"
      "chatgpt"

      # VPN
      "mullvad-vpn"
      "protonvpn"

      # Browsers
      "mullvad-browser"
      "firefox"
      "firefox@developer-edition"
      "google-chrome"
      "tor-browser"

      # Other
      "supertuxkart"
      "minecraft"
      "epic-games"
      "gog-galaxy"
      "ollama-app"
      "wallspace"
      # "dockspace"

      # Social
      "zulip"
      "element"
      "signal"
      "vesktop"
      "simplex"

      # CAD
      "kicad"

      "font-hack-nerd-font"
      "font-maple-mono-nf"
    ];
  };
}
