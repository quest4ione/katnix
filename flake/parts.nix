{ inputs, ... }:
{
  imports = [
    inputs.home-manager.flakeModules.home-manager
    inputs.flake-parts.flakeModules.flakeModules
  ];

  # flake-parts.flakeModules.flakeModules apperantly needs this to be defined
  flake.flakeModules.default = {
    assertions = [
      {
        assertion = false;
        message = "katnix.flakeModules.default exists as workaround. Do not use it.";
      }
    ];
  };

  systems = [
    "x86_64-linux"
  ];
}
