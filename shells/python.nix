with import <nixpkgs> { };

let
  pythonPackages = python3Packages;
in
pkgs.mkShell rec {
  name = "python-shell";
  venvDir = "./.venv";
  buildInputs = [
    pythonPackages.python
    pythonPackages.venvShellHook
  ];

  postShellHook = ''
    if [[ -f "requirements.txt" ]]; then
        pip install -r requirements.txt
    fi

    if [[ -f "dev-requirements.txt" ]]; then
        pip install -r dev-requirements.txt
    fi
  '';

}
