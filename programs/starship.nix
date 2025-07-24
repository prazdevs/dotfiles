{ ... }:

{
  programs.starship = {
    enable = true;
    enableTransience = true;
    settings = {
      command_timeout = 5000;
      cmd_duration = {
        format = "took [ $duration]($style)";
        style = "bold white";
      };
      directory = {
        read_only = "";
      };
      elixir = {
        symbol = " ";
      };
      elm = {
        symbol = " ";
      };
      erlang = {
        symbol = " ";
      };
      gcloud = {
        format = "on [$symbol($domain)]($style) ";
        symbol = "󱇶 ";
      };
      git_branch = {
        symbol = " ";
      };
      golang = {
        symbol = "󰟓 ";
      };
      haskell = {
        symbol = " ";
      };
      java = {
        symbol = " ";
      };
      # TODO activate later
      kubernetes = {
        disabled = true;
        symbol = "󰠳 ";
      };
      lua = {
        symbol = " ";
      };
      nix_shell = {
        symbol = " ";
      };
      nodejs = {
        symbol = " ";
      };
      package = {
        display_private = true;
        symbol = " ";
        style = "bold yellow";
      };
      python = {
        symbol = " ";
      };
      rust = {
        symbol = " ";
      };
    };
  };
}
