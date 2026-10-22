{ pkgs, ... }:
{
  users.users."kolobok" = {
    isNormalUser = true;
    description = "kolobok";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [];
  };

}