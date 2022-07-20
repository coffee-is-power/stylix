{pkgs, config, lib, ... }:
let
  themeFile = config.lib.stylix.colors {
    templateRepo = pkgs.fetchFromGitHub {
      owner = "aarowill";
      repo = "base16-alacritty";
      rev = "914727e48ebf3eab1574e23ca0db0ecd0e5fe9d0";
      sha256 = "sha256-oDsuiKx8gt+Ov7hZ9PibIQtE81IRSLO+n5N99WeiK34=";
    };
  };
in
{
  home-manager.sharedModules = [{
    programs.alacritty.settings.import = [ themeFile ];
  }];
}
