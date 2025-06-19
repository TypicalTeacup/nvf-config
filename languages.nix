{pkgs, ...}: {
  vim = {
    lsp.enable = true;
    lsp.formatOnSave = true;
    treesitter.enable = true;
    snippets.luasnip.enable = true;

    treesitter.grammars = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      ron
      regex
    ];

    languages = {
      nix.enable = true;
      lua.enable = true;
      bash.enable = true;
      java.enable = true;
      python.enable = true;

      css.enable = true;
      html.enable = true;
      php.enable = true;
      ts.enable = true;
      tailwind.enable = true;

      enableFormat = true;
      enableTreesitter = true;
      enableExtraDiagnostics = true;
    };
  };
}
