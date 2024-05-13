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

  # programs.bash.shellAliases = {
  #   nvim = "nvim -c \"lua require(\"persistence\").load() require(\"neo-tree.command\").execute({ toggle = true })\"";
  # };

  
  imports = [
    ./apps
    ./options
  ];

  programs.home-manager.enable = true;
}
