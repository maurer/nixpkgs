{stdenv, buildPythonPackage, fetchgit, bap, requests}:
 
buildPythonPackage rec {
  name = "bap";
  version = "8d1a7c";
  src = fetchgit {
    url = "https://github.com/BinaryAnalysisPlatform/bap.git";    
    rev = "8d1a7ca938320802c784adfa54ff5d851d5251d3";
    sha256 = "04n50n22sbslijdcjlv0h1z5fwwxsj08bdw5n9lxrrfm6fakfpdv";
  };

  propagatedBuildInputs = [bap requests];

  meta = with stdenv.lib; {
    description = "Platform for binary analysis. It is written in OCaml, but can be used from other languages.";
    homepage = https://github.com/BinaryAnalysisPlatform/bap/;
    license = licenses.mit;
  };
}
