{ pkgs, ... }:
{
  
  nix.settings.auto-optimise-store = true;
  
  nix.optimise = {
    automatic = true;
    dates = [ "Wed 10:00" ];
    randomizedDelaySec = "10min";
  }; 

  
  #auto clean  
  nix.gc = {
    automatic = true;
    dates = "Tue 10:00";
    randomizedDelaySec = "10min";
    options = "--delete-older-than 14d";
  };

}



