{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    intel-media-driver
    vulkan-loader
    vulkan-tools
    xwayland
    xwayland-satellite
    bluez
    bluez-tools
  ];
  
  nixpkgs.config.allowUnfree = true;
}