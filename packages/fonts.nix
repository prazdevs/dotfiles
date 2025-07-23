{
  lib,
  stdenvNoCC,
}:

stdenvNoCC.mkDerivation {
  pname = "fonts";
  version = "1.0";

  src = ../secrets/fonts;

  installPhase = ''
    runHook preInstall

    install -Dm644 -t $out/share/fonts/truetype/ *.ttf

    runHook postInstall
  '';
}