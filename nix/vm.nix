{ config, pkgs, inputs, ... }: {
  imports = [
    "${inputs.nixpkgs}/nixos/modules/virtualisation/quemu-vm.nix"
  ];

  # Use more aggressive compression then the default.
  
  # ...
}
