{ config, pkgs, inputs, ... }: {
  imports = [
    "${inputs.nixpkgs}/nixos/modules/virtualisation/quemu-vm.nix"
  ];
  config.virtualisation.diskImage = "iso";

  # Use more aggressive compression then the default.
  
  # ...
}
