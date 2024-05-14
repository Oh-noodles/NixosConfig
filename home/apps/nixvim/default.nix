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
    ./diffview.nix
    ./whichkey.nix
    ./notify.nix
    ./dressing.nix
    ./lualine.nix
    ./noice.nix
    ./indent-blankline.nix
    ./floaterm.nix
    ./todo-comments.nix
    ./persistence.nix
    ./keymaps.nix
  ];
 
  programs.nixvim = {
    enable = true;
    # colorschemes.dracula = {
    colorschemes.cyberdream = {
      enable = true;
    };
    autoCmd = [
      #{
      #  event = [ "UIEnter" ];
      #  command = "lua require('persistence').load()";
      #}
    ];
  };
}
