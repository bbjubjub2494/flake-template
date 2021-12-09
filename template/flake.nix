{
  description = "A very basic flake";

  inputs.devshell.url = "github:numtide/devshell";
  inputs.fup.url = "github:gytis-ivaskevicius/flake-utils-plus/v1.3.1";

  outputs = inputs@{ self, devshell, fup, nixpkgs }: fup.lib.mkFlake {

    inherit self inputs;

    sharedOverlays = [
      devshell.overlay
    ];

    outputsBuilder = channels: {
      defaultPackage = channels.nixpkgs.callPackage ./package.nix { };
      devShell = channels.nixpkgs.callPackage ./devshell.nix { };
    };
  };
}
