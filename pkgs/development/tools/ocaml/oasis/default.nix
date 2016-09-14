{stdenv, fetchurl, ocaml, findlib, ocaml_data_notation, type_conv,
 ocamlmod, ocamlify, ounit, expect}:

stdenv.mkDerivation {
  name = "ocaml-oasis-0.4.7";

  src = fetchurl {
    url = http://forge.ocamlcore.org/frs/download.php/1635/oasis-0.4.7.tar.gz;
    sha256 = "13crvqiy0hhlnm4qfyxq2jjvs11ldxf15c4g9q91k1x3wj04pg2l";
  };

  createFindlibDestdir = true;

  buildInputs =
    [
      ocaml findlib type_conv ocamlmod ocamlify ounit
    ];

  propagatedBuildInputs = [ ocaml_data_notation ];

  configurePhase = "ocaml setup.ml -configure --prefix $out";
  buildPhase     = "ocaml setup.ml -build";
  installPhase   = "ocaml setup.ml -install";

  meta = with stdenv.lib; {
    homepage = http://oasis.forge.ocamlcore.org/;
    description = "Configure, build and install system for OCaml projects";
    license = licenses.lgpl21;
    platforms = ocaml.meta.platforms or [];
    maintainers = with maintainers; [
      vbgl z77z
    ];
  };
}
