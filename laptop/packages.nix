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
  bacon # Background rust code checker

  # [[ Go ]]
  go

  # [[ BEAM ]]
  gleam
  elixir

  # [[ JAVA ]]
  javaPackages.compiler.openjdk25

  # [[ JavaScript ]]
  nodejs

  # [[ LaTeX ]]
  texliveFull

  # [[ Tools ]]
  wget
  zola # SSG
  ripgrep
  fzf
  ffmpeg
  mprocs # Interactive, parallel command runner
  nh # Yet another nix helper
  tmux
  starship # Prompt
  fastfetch # Used as a back-end for hyfetch
  macchina # Used as a back-end for hyfetch
  hyfetch
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
  glow # CLI markdown rendering
  iina # Media player
  # basalt # Obsidian TUI
  obsidian
  offpunk # Command line browser - Web, Gemini, & Gopher
  hledger
  hledger-ui
  hledger-fmt
  kalker
  fend
  calcure
  astroterm

  # [[ Containers ]]
  podman
  podman-tui

  # [[ Automation ]]
  n8n
  opencode

  # [[ Fonts ]]
  nerd-fonts.jetbrains-mono
  nerd-fonts.hack
  nerd-fonts.iosevka
  nerd-fonts.fira-code

  # [[ Misc. ]]
  amfora # Gemini browser
  vesktop # Discord client
  discord
  # zed-editor # GUI Editor, only use when absolutely necessary
  sqlite
  zoom-us
]
