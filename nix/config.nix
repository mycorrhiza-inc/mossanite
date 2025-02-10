{ config, pkgs, inputs, ... }: {
  users.users.root = {
    openssh.authorizedKeys.keys = [
    ];
    initialPassword = "changeme"
    shell = pkgs.fish;
  };
  programs.fish = {
    enable = true;
  };
  environment.etc = {
    src  = {
      enable = true;
      target = "mossanite";
      source = ../.;
    };
  };

  system.stateVersion = "24.11"; # Never change this
}
