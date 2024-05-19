let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in
with pkgs;
pkgs.mkShell {
  buildInputs = [
    bash
    black
    ffmpeg
    git
    gradle
    imagemagick
    inkscape
    jdk11
    maven
    postgresql_15
    python311
    python311Packages.graphviz
    python311Packages.jinja2
    python311Packages.psycopg2
    round
  ];
}

