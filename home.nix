{ pkgs, ... }:

{
  home.username = "kolobok";
  home.homeDirectory = "/home/kolobok";
  
  home.stateVersion = "24.05";
  
  home.packages = with pkgs; [
    htop
    swaybg
    w-clipboard
    git
    fastfetch
  ];
  
  programs.home-manager.enable = true;

}
 
