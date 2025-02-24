{ inputs, pkgs, ... }:
{
  imports = [
    # ./stylix.nix
  ];

  programs.zsh = {
    enable = true;
    shellAliases = {
      nvim = "nvim -c \"lua require('persistence').load()\"";
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
