{
  homebrew = {
    enable = true;
    onActivation.cleanup = "uninstall";
    caskArgs.no_quarantine = true;
    taps = [
    ];
    brews = [
      "xcodegen"
      "atuin"
      "imagemagick"
      "rbenv"
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
      "karabiner-elements"
      "imageoptim"
      "rawtherapee"
      "handbrake-app"
      "ghostty"

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
      "ollama"
      "whisky"
      "freetube"

      # Social
      "zulip"
      "element"
      "signal"

      # CAD
      "kicad"

      "font-hack-nerd-font"
      "font-maple-mono-nf"
    ];
  };
}
