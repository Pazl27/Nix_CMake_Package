{
  stdenv,
  cmake,
  ...
}:
stdenv.mkDerivation {
  pname = "myProject";
  version = "v1.0";

  src = ./.;  

  buildInputs = [ cmake ];

  configurePhase = ''
    cmake -B .
  '';

  buildPhase = ''
    make
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv main $out/bin/myProject
  '';
}




