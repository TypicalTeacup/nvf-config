{...}: {
  vim = {
    theme = {
      enable = true;
      name = "catppuccin";
      style = "macchiato";
    };

    notes.todo-comments.enable = true;
    treesitter.context.enable = true;
    ui.noice.enable = true;
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
