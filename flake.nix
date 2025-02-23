{
  description = "Mossanite: A Secure Enough, All in One, Infrastructure Platform";

  inputs = {
    # Here we declare we need nixpkgs, notice we only say what branch
    # not the exact commit hash, flakes will take care of that 
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    rust-overlay.url = "github:oxalica/rust-overlay";
  };
  # outputs MUST be a function that returns an Attribute set.
  # Everything else is just convention, convention that even some
  # Nix commands will assume are true.
  outputs = inputs: {
    # `nix run` and `nix build` will look for this attribute by default
    # `nix run` or `nix run .#default` should print "Hello world"

    # You can switch to the system described in ./configuration with
    nixosConfigurations.mossanite = inputs.nixpkgs.lib.nixosSystem {
      specialArgs = {
        # remember "inherit x;" is the same as "x = x;"
        inherit inputs; 
      };
      system = "x86_64-linux";
      modules = [ ./nix/config.nix  ];
    };
  };
}
