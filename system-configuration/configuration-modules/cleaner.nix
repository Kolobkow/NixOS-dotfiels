{ pkgs, ... }:
{
  
  nix.settings.auto-optimise-store = true;
  
  nix.optimise = {
    automatic = true;
    dates = [ "weekly" ];
  }; 

  
  #auto clean  
  nix.gc = {
    automatic = true;
    dates = "weekly";
    randomizedDelaySec = "45min";
    options = "--delete-older-than 14d";
  };


  boot.loader.systemd-boot.configurationLimit = 10;

  
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

