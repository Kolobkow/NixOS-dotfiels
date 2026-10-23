{ pkgs, ... }: {
  imports = [
    ./desktop-packages.nix
    ../zsh/zsh.nix
  ];

  home.username = "kolobok";
  home.homeDirectory = "/home/kolobok";
  home.stateVersion = "24.05";
  
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
 
