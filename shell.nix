{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.texlive.combine {
      inherit (pkgs.texlive)
        scheme-medium
        ebgaramond
        parskip
        fontaxes
        ;
    })
  ];
}
