{lib, ...}: {
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
        key = "<leader>u";
        silent = true;
        desc = "Undo Tree";
        action = "<cmd>UndotreeToggle<CR>";
      }
      {
        mode = "n";
        key = "<leader>bf";
        silent = true;
        desc = "Browse Files";
        action = "<cmd>Oil<CR>";
      }
      {
        mode = "n";
        key = "<leader>ge";
        silent = true;
        desc = "Go error handler";
        action = "oif err != nil {<CR>}<Esc>Oreturn err<Esc>";
      }
      {
        mode = "n";
        key = "<C-d>";
        silent = true;
        action = "<C-d>zz";
      }
      {
        mode = "n";
        key = "<C-u>";
        silent = true;
        action = "<C-u>zz";
      }
    ];

    telescope.enable = true;
    telescope.mappings.findFiles = "<leader>e";
    utility.oil-nvim.enable = true;
    utility.motion.hop.enable = true;
    utility.undotree.enable = true;

    binds.whichKey.enable = true;

    autocomplete.blink-cmp = {
      enable = true;
      mappings = {
        next = "<C-j>";
        previous = "<C-k>";
        confirm = "<C-CR>";
        close = "<C-q>";
      };
      friendly-snippets.enable = true;
    };
    # the path source doesn't work without this
    autocomplete.nvim-cmp.sources = {};

    formatter.conform-nvim = {
      enable = true;

      setupOpts.format_on_save = {
        lsp_fallback = true;
        async = false;
      };
    };

    autopairs.nvim-autopairs.enable = true;
    comments.comment-nvim.enable = true;

    dashboard.alpha = {
      enable = true;
      theme = "dashboard";
    };

    ui = {
      smartcolumn.enable = true;
      smartcolumn.setupOpts.colorcolumn = "80";

      colorizer.enable = true;
      colorizer.setupOpts.filetypes = {
        "*" = {names = false;};
        css = {css = true;};
      };
    };
  };
}
