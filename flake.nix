{
  description = "A simple C++ project";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { 
    self,
    nixpkgs 
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.${system} = {
      myPackage = pkgs.callPackage ./. {};
      default = self.packages.${system}.myPackage;
    };
  };
}
