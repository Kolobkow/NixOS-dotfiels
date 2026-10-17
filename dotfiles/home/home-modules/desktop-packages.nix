{ pkgs, ... }: {
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
    gnumake
  ];
}
