{ pkgs, ... }:
{
  hardware.bluetooth.enable = true;
  
  hardware.bluetooth.powerOnBoot = true;

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

}