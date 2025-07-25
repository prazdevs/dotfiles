{ ... }:

{
  programs.starship = {
    enable = true;
    enableTransience = true;
    settings = {
      command_timeout = 5000;
      format = "$username$hostname$localip$shlvl$singularity$kubernetes$directory$vcsh$fossil_branch$fossil_metrics$git_branch$git_commit$git_state$git_metrics$git_status$hg_branch$pijul_channel$docker_context$package$c$cmake$cobol$daml$dart$deno$dotnet$elixir$elm$erlang$fennel$gleam$golang$guix_shell$haskell$haxe$helm$java$julia$kotlin$gradle$lua$nim$nodejs\${custom.pnpm}$ocaml$opa$perl$php$pulumi$purescript$python$quarto$raku$rlang$red$ruby$rust$scala$solidity$swift$terraform$typst$vlang$vagrant$zig$buf$nix_shell$conda$meson$spack$memory_usage$aws$gcloud$openstack$azure$nats$direnv$env_var$mise$crystal$custom$sudo$cmd_duration$line_break$jobs$battery$time$status$os$container$netns$shell$character";
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
        format = "via [$symbol$name]($style) ";
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
      custom.pnpm = {
        command = "pnpm -v";
        detect_files = ["pnpm-lock.yaml"];
        format = "and [$symbol]($style)[v$output]($style) ";
        symbol = " ";
        style = "bold yellow";
      };
    };
  };
}
