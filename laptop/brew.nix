{
  homebrew = {
    enable = true;
    onActivation.cleanup = "uninstall";
    caskArgs.no_quarantine = true;
    taps = [
      # "yakitrak/yakitrak"
      "arcboxlabs/tap"
    ];
    brews = [
      "xcodegen"
      "atuin"
      "imagemagick"
      "rbenv"
      "container"
      "hugo"
      # "yakitrak/yakitrak/obsidian-cli"
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
      "arcboxlabs/tap/arcbox"
      "osaurus"
      # "openclaw"

      # VPN
      "mullvad-vpn"

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
      "whisky"
      "freetube"

      # Social
      "zulip"
      "element"
      "signal"
      "vesktop"

      # CAD
      "kicad"

      "font-hack-nerd-font"
      "font-maple-mono-nf"
    ];
  };
}
