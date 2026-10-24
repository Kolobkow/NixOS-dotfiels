{ pkgs, ... }:
{
  system.autoUpgrade = {
    enable = true;
    flake = "/home/kolobok/nixos-config#nixos";
    flags = [
      "--update-input" "nixpkgs"
      "--update-input" "home-manager"
      "-L"
    ];
    dates = "Mon 22:00";
    allowReboot = false;
  };

}
