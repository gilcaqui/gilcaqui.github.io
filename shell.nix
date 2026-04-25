{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
  ];

  shellHook = ''
    echo "Fetch dependencies with 'npm i'"
    echo "Run the project locally with 'npx quartz build --serve"
    echo "Or simply deploy with 'npx quartz sync'"
  '';
}

