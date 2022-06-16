{
  description = "A very basic flake template";

  outputs = _: {
    templates.default = {
      path = templates/default;
      description = "A bare-bone flakes with some sugar";
    };
  };
}
