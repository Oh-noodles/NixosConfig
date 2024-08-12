{
  programs.nixvim.globals.mapleader = " ";
  programs.nixvim.opts = {
    number = true;
    relativenumber = true;

    autoindent = true;
    foldmethod = "indent";
    foldenable = false;

    expandtab = true;
    tabstop = 2;
    softtabstop = 2;
    shiftwidth = 2;

    smartindent = true;
    breakindent = true;

    cursorline = true;
  };
}
