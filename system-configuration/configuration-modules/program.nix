{ pkgs, ... }:

{

  programs.xwayland.enable = true;

  programs.niri.enable = true;
  
  programs.zsh.enable = true;

  programs.steam = {
    enable = true;
  };

}
