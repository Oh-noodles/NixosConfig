{ config, pkgs, ... }:
{
  home.username = "joe";
  home.homeDirectory = "/home/joe";

  home.packages = with pkgs; [
    tree
    distrobox
    # gnomeExtensions.advanced-alttab-window-switcher
    noto-fonts-cjk-sans
    conda
    rofi
    brave

    appimage-run
    vscode
    simplescreenrecorder
    thunderbird

    gcc
    cmake
    gnumake
  ];

  home.stateVersion = "23.11";

  # programs.bash.shellAliases = {
  #   nvim = "nvim -c \"lua require(\"persistence\").load() require(\"neo-tree.command\").execute({ toggle = true })\"";
  # };

  
  imports = [
    ./apps
    ./options
  ];

  programs.home-manager.enable = true;
}
