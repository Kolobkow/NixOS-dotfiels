{ pkgs, ... }:
{
  system.autoUpgrade = {
    enable = true;
    flake = "/home/kolobok/nixos-config#nixos";
    flags = [
      "--update-input" "nixpkgs"
      "--update-input" "home-manager"
      "--update-input" "niri"
      "-L"
    ];
    dates = "Mon 10:00";
    randomizedDelaySec = "10min";
    allowReboot = false;
  };

}
