# WM Setup Steps for Linux

<img width="2560" height="1440" alt="screenshot2" src="https://github.com/user-attachments/assets/0e427df0-d778-408d-8a73-4896d363240e" />

> ⚠️ **Don't use the default package for Lemonbar**  
The default `lemonbar` lacks proper font support.

✅ Use the `lemonbar-xft` build instead, which supports fonts.  
Check my repo for the `lemonbar-xft` source. Clone it, build it, and install it manually.

```bash
git clone https://github.com/yourusername/lemonbar-xft.git
cd lemonbar-xft
make
sudo make install

