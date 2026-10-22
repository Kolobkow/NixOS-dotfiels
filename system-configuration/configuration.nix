{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./configuration-modules/system-packages.nix
      ./configuration-modules/program.nix
      ./configuration-modules/service.nix
      ./configuration-modules/hardware.nix
      ./configuration-modules/boot.nix
      ./configuration-modules/user.nix
      ./configuration-modules/localization.nix
      ./configuration-modules/network.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  system.stateVersion = "26.05";

}

