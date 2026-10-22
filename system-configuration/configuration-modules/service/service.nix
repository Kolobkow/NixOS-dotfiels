{ pkgs, ... }:
{
 
  services.flatpak.enable = true;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  services.displayManager.defaultSession = "niri";
  
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

}