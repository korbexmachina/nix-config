{ pkgs, ... }:
with pkgs;
[
  wezterm
  vim
  lsd
  neovim # The best text editor
  zed-editor # GUI Editor, only use when absolutely necessary
  pandoc
  sketchybar
  amfora
  git-filter-repo
  aerospace # Tiling WM
  opentofu # IaC
  # Nix
  nixfmt-rfc-style
  nixd
  # Python things...
  python312
  python312Packages.python-lsp-server
  pipx
  uv
  ruff
  # pkgs.ruff-lsp
  # Useful tools
  pinentry_mac
  bacon
  bat # Better cat
  dust # Better du
  # pkgs.atuin # Better shell history
  sqlite
  git
  gh
  lazygit
  gnupg
  podman
  podman-tui
  comma
  tree
  xh # curl, but nicer
  just # just do it
  # pkgs.openocd
  # BEAM
  gleam
  elixir
  # Haskell
  # pkgs.haskell-language-server
  # pkgs.ghc # Glasgow Haskell Compiler
  # pkgs.haskell.compiler.ghc947
  # pkgs.haskell.compiler.ghc963
  # (pkgs.haskell-language-server.override {
  #   supportedGhcVersions = [
  #     "963"
  #   ];
  nh
  tmux
  starship
  fastfetch
  texliveFull # LaTeX
  vesktop # Discord client
  zathura # PDF Viewer
]
