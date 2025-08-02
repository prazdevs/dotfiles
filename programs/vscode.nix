{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;

    profiles.default.extensions = with pkgs.vscode-extensions; [
      catppuccin.catppuccin-vsc-icons
      dbaeumer.vscode-eslint
      gruntfuggly.todo-tree
      jnoortheen.nix-ide
      lokalise.i18n-ally
      rust-lang.rust-analyzer
      tamasfe.even-better-toml
      usernamehw.errorlens
      vue.volar
    ];

    profiles.default.userSettings = {
      # Native settings

      "breadcrumbs.enabled" = false;

      "editor.codeActionsOnSave" = {
        "source.fixAll" = "explicit";
        "source.organizeImports" = "never";
      };
      "editor.codeLensFontSize" = 12;
      "editor.copyWithSyntaxHighlighting" = false;
      "editor.cursorBlinking" = "expand";
      "editor.cursorSmoothCaretAnimation" = "on";
      "editor.detectIndentation" = true;
      "editor.fontFamily" = "MonoLisa, monospace";
      "editor.fontLigatures" = true;
      "editor.fontWeight" = 400;
      "editor.formatOnSave" = false;
      "editor.guides.bracketPairs" = "active";
      "editor.inlineSuggest.enabled" = true;
      "editor.lineHeight" = 0;
      "editor.minimap.enabled" = false;
      "editor.multiCursorModifier" = "ctrlCmd";
      "editor.overviewRulerBorder" = false;
      "editor.renderLineHighlight" = "all";
      "editor.renderWhitespace" = "trailing";
      "editor.renderFinalNewline" = "dimmed";
      "editor.semanticHighlighting.enabled" = true;
      "editor.snippetSuggestions" = "bottom";
      "editor.stickyScroll.enabled" = true;
      "editor.suggestSelection" = "first";
      "editor.suggest.showWords" = false;
      "editor.tabSize" = 2;
      "editor.unicodeHighlight.includeStrings" = false;
      "editor.wordBasedSuggestions" = "off";

      "emmet.showAbbreviationSuggestions" = false;
      "emmet.showSuggestionsAsSnippets" = true;
      "emmet.triggerExpansionOnTab" = false;

      "explorer.compactFolders" = false;
      "explorer.confirmDelete" = false;
      "explorer.confirmDragAndDrop" = false;
      "explorer.decorations.badges" = false;
      # "explorer.fileNesting.enabled" = true;
      # "explorer.fileNesting.expand" = true;

      "files.enableTrash" = true;
      "files.exclude" = {
        "**/.git" = false;
      };
      "files.simpleDialog.enable" = true;

      "git.autofetch" = true;
      "git.blame.editorDecoration.enabled" = true;
      "git.confirmSync" = false;
      "git.ignoreRebaseWarning" = true;
      "git.untrackedChanges" = "separate";

      "security.workspace.trust.enabled" = false;

      "terminal.integrated.cursorBlinking" = true;
      "terminal.integrated.cursorStyle" = "line";
      "terminal.integrated.defaultProfile.osx" = "fish";
      "terminal.integrated.fontFamily" = "MonoLisa, Symbols Nerd Font Mono, monospace";
      "terminal.integrated.fontWeight" = 400;
      "terminal.integrated.persistentSessionReviveProcess" = "never";
      "terminal.integrated.tabs.enabled" = true;

      "window.dialogStyle" = "custom";
      "window.nativeFullScreen" = true;
      "window.nativeTabs" = true;
      "window.newWindowDimensions" = "inherit";
      "window.titleBarStyle" = "custom";

      "workbench.editor.closeOnFileDelete" = true;
      "workbench.editor.enablePreview" = false;
      "workbench.editor.enablePreviewFromQuickOpen" = false;
      "workbench.editor.highlightModifiedTabs" = true;
      "workbench.editor.limit.enabled" = true;
      "workbench.editor.limit.perEditorGroup" = true;
      "workbench.editor.limit.value" = 7;
      "workbench.editor.pinnedTabSizing" = "compact";
      "workbench.editor.tabSizing" = "shrink";
      "workbench.fontAliasing" = "antialiased";
      "workbench.iconTheme" = "catppuccin-mocha";
      "workbench.list.smoothScrolling" = true;
      "workbench.sideBar.location" = "right";
      "workbench.startupEditor" = "none";
      "workbench.tree.expandMode" = "singleClick";
      "workbench.tree.indent" = 12;

      # Extension settings

      "eslint.quiet" = true;
      "eslint.rules.customizations" = [
        {
          "rule" = "style/*";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "format/*";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "*-indent";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "*-spacing";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "*-spaces";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "*-order";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "*-dangle";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "*-newline";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "*quotes";
          "severity" = "off";
          "fixable" = true;
        }
        {
          "rule" = "*semi";
          "severity" = "off";
          "fixable" = true;
        }
      ];

      "i18n-ally.autoDetection" = true;

      "todo-tree.general.statusBar" = "total";
      "todo-tree.general.showActivityBarBadge" = true;
      "todo-tree.general.tags" = [
        "todo"
        "@todo"
        "TODO"
        "@TODO"
        "fixme"
        "@fixme"
        "FIXME"
        "@FIXME"
      ];
      "todo-tree.highlights.defaultHighlight" = {
        "gutterIcon" = true;
        "iconColour" = "#a6adc8";
        "background" = "#cdd6f4";
        "foreground" = "#11111b";
        "fontStyle" = "italic";
      };

      "vue.inlayHints.missingProps" = true;
      "vue.splitEditors.icon" = false;
    };
  };

  catppuccin.vscode.profiles.default = {
    settings = {
      bracketMode = "dimmed";
      boldKeywords = false;
      italicComments = true;
      italicKeywords = false;
    };
  };
}
