{...}: {
  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "macchiato";
    };

    ui.noice.enable = true;
    utility.snacks-nvim = {
      enable = true;
      setupOpts = {
        input.enabled = true;
        picker.enabled = true;
      };
    };
    notes.todo-comments.enable = true;
    treesitter.context.enable = true;
    visuals = {
      rainbow-delimiters.enable = true;
      indent-blankline.enable = true;
      nvim-web-devicons.enable = true;
    };
    statusline.lualine = {
      enable = true;
      refresh = {
        statusline = 100;
        tabline = 100;
        winbar = 100;
      };
    };
  };
}
