## This is still in Beta level. Use this only if you know what you are doing!

This is simple script to install minimal KDE plasma DE on Fedora minimal install. The ISO is Fedora 37 Everything ISO and then only choose minimal install in the "Software Selection". After Installation login with your user name and password and then follow these processes:

- sudo dnf install micro git
- sudo micro /etc/dnf/dnf.conf ## To edit the dnf config file, add these lines

defaultyes=True

max_parallel_downloads=10

fastestmirror=True

### Ctrl S to save and then Ctrl Q to exit micro editor.
## Then run the following commands:
- git clone https://gitlab.com/asifakonjee/fedora-kde-minimal.git
- cd fedora-kde-minimal/
- sudo cdmod +x fedora-kde-minimal.sh
- sudo ./fedora-kde-minimal.sh

After completion, reboot.
