{ pkgs, inputs, lib, ... }:
{
  imports = [
    inputs.xremap-flake.homeManagerModules.default
  ];
  services.xremap = {
    config.modmap = [{
      name = "CapsLock Esc Swap";
      remap = {
        "CapsLock" = "Esc";
        "Esc" = "CapsLock";
        ## Keycodes aren't recognized
        #"XF86NotificationCenter" = "PlayPause";
        #"XF86PickupPhone" = "PreviousSong";
        #"XF86HangupPhone" = "NextSong";
      };
    }];
    config.keymap = [{
      name = "Media Keys";
      remap = {
        "C-F9" = "PlayPause";
        "C-F10" = "PreviousSong";
        "C-F11" = "NextSong";
      };
    }];
  };
}
