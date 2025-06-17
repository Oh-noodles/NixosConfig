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
    nodejs_23
    xclip # so we could copy from nvim to system clipboard

    blender
    # (blender.override { cudaSupport = true; })
    python314
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
