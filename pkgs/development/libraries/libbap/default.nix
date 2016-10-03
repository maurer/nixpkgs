{stdenv, ocaml, findlib, ocaml_oasis, core_kernel, bap, ncurses,
 llvm_34, fetchFromGitHub}:

stdenv.mkDerivation rec {
  name = "libbap";
  version = "0";
  src = fetchFromGitHub {
    owner = "maurer";
    repo = "libbap";
    rev = "ff32f9be8833ca3d22055798fa9a3bc3e7d0a447";
    sha256 = "09zziww35kz1d65i56xbsr5ck02maqnkm58ncdljr1skhf5lhh4i";
  };

  buildInputs = [ ocaml findlib ocaml_oasis core_kernel bap ncurses
                  llvm_34 ];
  preConfigure = "oasis setup";
  doCheck = true;
  meta = with stdenv.lib; {
    description = "C Bindings for BAP";
    license = licenses.mit;
  };
}
