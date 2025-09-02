{
  programs.nixvim.plugins.treesitter = {
    enable = true;
    nixGrammars = true;
    # indent = true;
    settings = {
      highlight.enable = true;
      indent.enable = true;
      # auto_install = true;
      # ensure_installed = [ "glsl" ];
    };
  };
  programs.nixvim.plugins.treesitter-context = {
    enable = true;
  };
}
