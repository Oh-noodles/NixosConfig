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
    initExtra = ''
      # lines here wiil add to .zshrc
    '';
    oh-my-zsh = {
      enable = true;
      theme = "ys";
    };
  };

}
