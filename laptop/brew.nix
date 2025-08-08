{
  pkgs,
  ...
}:
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

      # VPN
      "mullvadvpn"

      # Browsers
      "mullvad-browser"
      "firefox"
      "firefox@developer-edition"

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
    ];
  };
}
