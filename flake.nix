{
  description = "A very basic flake template";

  outputs = _: {
    defaultTemplate = {
      path = ./template;
      description = "A bare-bone flakes with some sugar";
    };
  };
}
