{
  programs.nixvim.keymaps = [
    {
      key = "<leader>e";
      action = "<CMD>Neotree toggle<CR>";
    }
    {
      key = "<leader>cf";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
    }
    {
      key = "<leader>,";
      action = "<CMD>Telescope buffers sort_mru=true sort_lastused=true<CR>";
    }

    {
      key = "<C-h>";
      action = "<cmd>wincmd h<cr>";
    }
    {
      key = "<C-j>";
      action = "<cmd>wincmd j<cr>";
    }
    {
      key = "<C-k>";
      action = "<cmd>wincmd k<cr>";
    }
    {
      key = "<C-l>";
      action = "<cmd>wincmd l<cr>";
    }
    {
      key = "<C-/>";
      mode = [ "n" "t" ];
      action = "<cmd>FloatermToggle<cr>";
    }
    # vim registers <C-/> as <C-_>, so we set it too
    {
      key = "<C-_>";
      mode = [ "n" "t" ];
      action = "<cmd>FloatermToggle<cr>";
    }
  ];
}
