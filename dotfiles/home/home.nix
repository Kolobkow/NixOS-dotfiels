{ pkgs, ... }: {
  imports = [
    ./modules/desktop-packages.nix

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
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    # Включаем тему Powerlevel10k
    initContent = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
  };
  


  programs.bash.enable = true; # пусть bash останется как запасной
  programs.home-manager.enable = true;

}
 
