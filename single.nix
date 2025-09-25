{
pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
    packages = with pkgs; [
        python312Full
        python312Packages.matplotlib
        python312Packages.pandas
        python312Packages.numpy
        gcc
    ];

    shellHook = ''
        echo ""
        echo "Packages loaded: gcc, python312, matplotlib, pandas, numpy"
    '';

}
