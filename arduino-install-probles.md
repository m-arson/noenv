1. No splashscreen : sudo apt install openjdk-17-jre
2.
    - Error : Picked up JAVA_TOOL_OPTIONS:
              java.lang.UnsatisfiedLinkError: /usr/lib/x86_64-linux-gnu/liblistSerialsj.so.1.4.0: /usr/lib/x86_64-linux-gnu/liblistSerialsj.so.1.4.0: undefined symbol: sp_get_port_usb_vid_pid
    - Solve : sudo apt install libserialport0 patchelf && sudo patchelf --add-needed /usr/lib/x86_64-linux-gnu/libserialport.so.0 /usr/lib/x86_64-linux-gnu/liblistSerialsj.so.1.4.0
    
3. Canberra-gtk-module : sudo apt install libcanberra-gtk-module
