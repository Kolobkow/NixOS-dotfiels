{ pkgs, ... }: {
  imports = [
    ./desktop-packages.nix
    ./symlink.nix
    ../zsh/zsh.nix
    ../cursor/cursor.nix    
  ];

  home.username = "kolobok";
  home.homeDirectory = "/home/kolobok";
  home.stateVersion = "24.05";
  
  programs.home-manager.enable = true;

}
 
