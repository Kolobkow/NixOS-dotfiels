{ pkgs, ... }:

{
  home.username = "kolobok";
  home.homeDirectory = "/home/kolobok";
  
  home.stateVersion = "24.05";
  
  home.packages = with pkgs; [
    htop
    swaybg
    wl-clipboard
    git
    fastfetch
    mako
    alacritty
    rofi
    fuzzel
    waybar
  ];
  
  programs.home-manager.enable = true;

}
 
