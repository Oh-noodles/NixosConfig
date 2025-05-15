{
  programs.nixvim.plugins.lualine = {
    enable = false; # conflict with nvim-tree's window picker, disable it temporary
  };
}
