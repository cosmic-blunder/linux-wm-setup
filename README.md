# WM Setup Steps for Linux

![Preview](assets/screenshot.png)

> ⚠️ **Don't use the default package for Lemonbar**  
The default `lemonbar` lacks proper font support.

✅ Use the `lemonbar-xft` build instead, which supports fonts.  
Check my repo for the `lemonbar-xft` source. Clone it, build it, and install it manually.

```bash
git clone https://github.com/yourusername/lemonbar-xft.git
cd lemonbar-xft
make
sudo make install

