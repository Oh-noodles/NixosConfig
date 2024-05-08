{ inputs, ... }: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./options.nix
    ./nvim-tree.nix
    ./bufferline.nix
    ./comment.nix
    ./lsp.nix
    ./cmp.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
    ./whichkey.nix
    ./keymaps.nix
  ];

  programs.nixvim = {
    enable = true;
    colorschemes.catppuccin = {
      enable = true;
    };
  };
}
