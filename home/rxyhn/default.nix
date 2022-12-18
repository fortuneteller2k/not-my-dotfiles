{
  config,
  inputs,
  pkgs,
  lib,
  ...
}: {
  imports = [
    ./home.nix
    ./packages.nix

    ./modules/shell
    ./modules/desktop/windowManagers/hyprland

    ./modules/programs/discord.nix
    ./modules/programs/helix.nix
    ./modules/programs/kitty.nix
    ./modules/programs/mpd.nix
    ./modules/programs/vscode.nix
    ./modules/programs/zathura.nix

    (import ./modules/programs/firefox {
      inherit config pkgs;
      package = pkgs.firefox-wayland;
    })
  ];
}
