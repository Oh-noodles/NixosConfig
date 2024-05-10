{ config, pkgs, ... }:
{
  home.username = "huangqiang";
  home.homeDirectory = "/home/huangqiang";

  home.packages = with pkgs; [
    gnomeExtensions.advanced-alttab-window-switcher
  ];

  home.stateVersion = "23.11";

  imports = [
    ./apps
  ];

  programs.home-manager.enable = true;
}
