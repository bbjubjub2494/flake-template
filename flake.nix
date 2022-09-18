{
  description = "A very basic flake template";

  outputs = { nixpkgs, ... }: {
    templates.default = {
      path = templates/default;
      description = "A bare-bone flake with some sugar";
    };

    templates.xelatex = {
      path = templates/xelatex;
      description = "A XeLaTex document";
    };
  };
}
