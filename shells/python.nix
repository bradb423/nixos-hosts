with import <nixpkgs> { };

let
  pythonPackages = python3Packages;
in
pkgs.mkShell rec {
  name = "flashcard";
  venvDir = "./.venv";
  buildInputs = [
    pythonPackages.python
    pythonPackages.venvShellHook
    ripgrep
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
