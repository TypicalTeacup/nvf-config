{...}: {
  imports = [
    ./rice.nix
    ./languages.nix
  ];

  vim = {
    lineNumberMode = "relNumber";
    options = {
      # 4-space tabs
      expandtab = true;
      tabstop = 4;
      softtabstop = 4;
      shiftwidth = 4;

      scrolloff = 8;
      sidescrolloff = 8;

      linebreak = true;

      cursorline = true;
    };

    clipboard = {
      enable = true;
      registers = "unnamedplus";
    };

    keymaps = [
      {
        mode = "n";
        key = "<leader>e";
        silent = true;
        desc = "Browse Files";
        action = "<cmd>Oil<CR>";
      }
    ];

    telescope.enable = true;
    utility.oil-nvim.enable = true;
    utility.motion.hop.enable = true;

    binds.whichKey.enable = true;

    autocomplete.blink-cmp.enable = true;
    formatter.conform-nvim = {
      enable = true;

      setupOpts.format_on_save = {
        lsp_fallback = true;
        async = false;
      };
    };

    autopairs.nvim-autopairs.enable = true;
    comments.comment-nvim.enable = true;

    ui.colorizer.enable = true;
    ui.colorizer.setupOpts.filetypes = {
      "*" = {names = false;};
      css = {css = true;};
    };
  };
}
