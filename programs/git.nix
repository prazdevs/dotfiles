{ ... }:

{
  programs.git = {
    enable = true;
    userName = "praz";
    userEmail = "sachabouillez@gmail.com";
    aliases = {
      s = "status";
      sw = "switch";
      swc = "switch -c";
      swm = "switch main";
      co = "checkout";
      last = "log -1 HEAD";
      ls = "log --oneline";
      rh = "reset --hard";
    };
    extraConfig = {
      init.defaultBranch = "main";
      push = {
        autoSetupRemote = true;
        default = "current";
      };
    };
  };
}
