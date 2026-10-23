{ config, pkgs, ... }:

{
  services.mako = {
    enable = true;
    
    # Время показа уведомления в миллисекундах (например, 5000 = 5 секунд)
    defaultTimeout = 5000; 
    
    # Принудительно применять этот таймаут ко всем уведомлениям, 
    # даже если приложение просило держать их дольше
    ignoreTimeout = 1; 

    # Остальные твои настройки (внешний вид, цвета и т.д.)
    font = "JetBrainsMono Nerd Font Bold 10";
    width = 300;
    height = 100;
    anchor = "top-right";
  };
}