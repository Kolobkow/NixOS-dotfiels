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
    waybar
    firefox
    thunar
    nerd-fonts.jetbrains-mono
    adwaita-icon-theme
    telegram-desktop
  ];
  
  home.pointerCursor = {
    enable = true;
    package = pkgs.adwaita-icon-theme;
    name = "Adwaita";
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
  



  programs.home-manager.enable = true;

}
 
