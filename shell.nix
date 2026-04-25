{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
  ];

  shellHook = ''
    echo "Build the project with 'npm i && npx quartz build --serve"
    echo "Deploy with 'npx quartz sync'"
  '';
}

