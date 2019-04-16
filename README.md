# Fix open-vm-tools on Linux

Do your VM tools stop working sporadically? If you answered no, then wow you are lucky. But for the rest of us, this is an annoying task that we must do some mornings.  

This script does the things I do every time open-vm-tools fails to work on
my Ubuntu distro.  

Make sure you do not have the VMware tools built into VMware installed, or
else they will conflict.

This script prompts for you confirmation before doing anything.

The commands it runs for Ubuntu are:

1. `sudo apt update`  
2. `sudo apt install --reinstall open-vm-tools open-vm-tools-desktop`
3. `sudo reboot -i NOW`

The commands it runs for CentOS are:

1. `sudo yum updateinfo`
2. `sudo yum reinstall open-vm-tools open-vm-tools-desktop`
3. `sudo reboot -i NOW`

It will prompt before reinstalling as well as before rebooting.  

