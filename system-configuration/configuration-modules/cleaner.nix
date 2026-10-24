{ pkgs, ... }:
{
  
  nix.settings.auto-optimise-store = true;
  
  #auto clean  
  nix.gc = {
    automatic = true;
    dates = "Tue 10:00";
    randomizedDelaySec = "10min";
    options = "--delete-older-than 14d";
  };

}



