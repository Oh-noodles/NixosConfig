{ inputs, pkgs, ... }:
{
  imports = [
    # ./stylix.nix
  ];

  programs.zsh = {
    enable = true;
    shellAliases = {
      nvim = "nvim -c \"lua require('persistence').load() require('neo-tree.command').execute({ toggle = true })\"";
    };
    oh-my-zsh = {
      enable = true;
      theme = "ys";
    };
  };

}
