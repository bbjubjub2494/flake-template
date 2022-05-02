{stdenv}:
stdenv.mkDerivation {
  name = "example";
  src = builtins.path {
    path = ../.;
    name = "example";
  };
}
