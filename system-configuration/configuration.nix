{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./configuration-modules/system-packages/system-packages.nix
      ./configuration-modules/program/program.nix
      ./configuration-modules/service/service.nix
      ./configuration-modules/hardware/hardware.nix
      ./configuration-modules/boot/boot.nix
      ./configuration-modules/user/user.nix
      ./configuration-modules/localization/localization.nix
      ./configuration-modules/network/network.nix
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  
  system.stateVersion = "26.05";

}

