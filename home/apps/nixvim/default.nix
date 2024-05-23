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
    ./spectre.nix
    ./flash.nix
    ./gitsigns.nix
    ./neogit.nix
    ./markdown.nix
    ./keymaps.nix
  ];
 
  programs.nixvim = {
    enable = true;
    # colorschemes.dracula = {
    colorschemes.cyberdream = {
      enable = true;
      settings.theme.highlights = {
        LineNr.fg = "#dbdbdb";
        # CursorLineNr.fg = "#ffffff";
        CursorLine.bg = "#2d3036";
      };
    };
    autoCmd = [
      {
       event = [ "FileType" ];
       command = "lua require('telescope').setup({
          defaults = {
            mappings = {
              n = {
                ['dd'] = require('telescope.actions').delete_buffer,
              }
            }
          }
        })";
      }
    ];
  };
}
