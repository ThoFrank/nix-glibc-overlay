{pkgs ? import <nixpkgs>{ overlays = [(import ./glibc-overlay.nix)]; }}:
pkgs.rustPlatform.buildRustPackage {
    pname = "nix-glibc-overlay";
    version = "0.1.0";
    src = pkgs.nix-gitignore.gitignoreSource [] ./.;
    cargoSha256 = "sha256-dY/nwlyCcQvKE6q/8phz8hq+UUHxHFjzzMwURyWHuc8=";
}