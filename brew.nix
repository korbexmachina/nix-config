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
      # "homebrew/bundle"
      # "korbexmachina/tap"
      # "riscv-software-src/riscv"
    ];
    brews = [
      # "korbexmachina/tap/go-archive-it"
      # "korbexmachina/tap/roll"
      # "riscv-software-src/riscv/riscv-tools"
      # "riscv64-elf-gcc"
      "xcodegen"
      "atuin"
      "imagemagick"
    ];
    casks = [
      "kicad"
      "whisky"
      "anki"
      "supertuxkart"
      "signal"
      "freetube"
      "lunatask"
      "imageoptim"
      # Terminal emulator
      # "wezterm"
      # Productivity
      "fantastical"
      "bitwarden"
      "cardhop"
      "fantastical"
      "insomnia"
      "obs"
      "raycast"
      "karabiner-elements"
      # VPN
      "mullvadvpn"
      # Browsers
      "mullvad-browser"
      "firefox"
      "firefox@developer-edition"
      # Other
      "minecraft"
      "epic-games"
      "gog-galaxy"
      "ollama"
      # "docker"
      # Social
      "zulip"
      "element"
      # Fonts
      "font-hack-nerd-font"
      "font-fira-code-nerd-font"
      "font-jetbrains-mono-nerd-font"
      "ollamac"
      "rawtherapee"
    ];
  };
}
