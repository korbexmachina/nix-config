{ pkgs, ... }:
with pkgs;
[
  # [[ Essentials ]]
  neovim # The best text editor
  wezterm
  vim

  # [[ MacOS ]]
  aerospace # Tiling WM
  sketchybar # Status bar

  # [[ Nix ]]
  nixfmt-rfc-style
  nixd

  # [[ Python ]]
  python312
  python312Packages.python-lsp-server
  pipx
  uv
  ruff

  # [[ Rust ]]
  bacon

  # [[ BEAM ]]
  gleam
  elixir

  # [[ LaTeX ]]
  texliveFull

  # [[ Tools ]]
  nh # Yet another nix helper
  tmux
  starship # Prompt
  fastfetch
  zathura # PDF Viewer
  xh # curl, but nicer
  just # Project tooling
  comma # Run one off commands without installing
  lazygit
  git
  gh # GitHub CLI
  gnupg
  pinentry_mac
  bat # Better cat
  dust # Better du
  lsd # lsdeluxe
  git-filter-repo
  pandoc
  opentofu # IaC

  # [[ Containers ]]
  podman
  podman-tui

  # [[ Fonts ]]
  nerd-fonts.jetbrains-mono
  nerd-fonts.hack
  nerd-fonts.iosevka
  nerd-fonts.fira-code

  # [[ Misc. ]]
  amfora # Gemini browser
  vesktop # Discord client
  zed-editor # GUI Editor, only use when absolutely necessary
  sqlite
]
