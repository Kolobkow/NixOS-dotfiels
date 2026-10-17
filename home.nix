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
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    # Включаем тему Powerlevel10k
    initContent = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
  };

  # Если вы хотите, чтобы система по умолчанию открывала Zsh в терминале:
  programs.bash.enable = true; # пусть bash останется как запасной
  programs.home-manager.enable = true;

}
 
