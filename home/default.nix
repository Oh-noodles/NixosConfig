{ config, pkgs, ... }:
{
  home.username = "huangqiang";
  home.homeDirectory = "/home/huangqiang";

  home.packages = with pkgs; [
    distrobox
    clang
    gnomeExtensions.advanced-alttab-window-switcher
    (nerdfonts.override { fonts = [ "DroidSansMono" ]; })
  ];

  home.stateVersion = "23.11";

  imports = [
    ./apps
  ];

  programs.home-manager.enable = true;
}
