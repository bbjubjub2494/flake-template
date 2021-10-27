{
  description = "A very basic flake template";

  outputs = { self }: {

    defaultTemplate = {
      path = ./template;
      description = "A bare-bone flakes with some sugar";
    };

  };
}
