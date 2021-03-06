#!/bin/sh

# Programs Arrays

xorgApps=(
  "xorg-server"
  "xf86-video-vesa"
  "xorg-bdftopcf"
  "xorg-docs"
  "xorg-font-util"
  "xorg-fonts-75dpi"
  "xorg-fonts-100dpi"
  "xorg-fonts-encodings"
  "xorg-iceauth"
  "xorg-mkfontscale"
  "xorg-server"
  "xorg-server-common"
  "xorg-server-devel"
  "xorg-server-xephyr"
  "xorg-server-xnest"
  "xorg-server-xvfb"
  "xorg-server-xwayland"
  "xorg-sessreg"
  "xorg-setxkbmap"
  "xorg-smproxy"
  "xorg-x11perf"
  "xorg-xauth"
  "xorg-xbacklight"
  "xorg-xcmsdb"
  "xorg-xcursorgen"
  "xorg-xdpyinfo"
  "xorg-xdriinfo"
  "xorg-xev"
  "xorg-xgamma"
  "xorg-xhost"
  "xorg-xinput"
  "xorg-xkbcomp"
  "xorg-xkbevd"
  "xorg-xkbutils"
  "xorg-xkill"
  "xorg-xlsatoms"
  "xorg-xlsclients"
  "xorg-xmodmap"
  "xorg-xpr"
  "xorg-xprop"
  "xorg-xrandr"
  "xorg-xrdb"
  "xorg-xrefresh"
  "xorg-xset"
  "xorg-xsetroot"
  "xorg-xvinfo"
  "xorg-xwd"
  "xorg-xwininfo"
  "xorg-xwud"
  "xorg-bdftopcf"
  "xorg-iceauth"
  "xorg-mkfontscale"
  "xorg-sessreg"
  "xorg-setxkbmap"
  "xorg-smproxy"
  "xorg-x11perf"
  "xorg-xauth"
  "xorg-xbacklight"
  "xorg-xcmsdb"
  "xorg-xcursorgen"
  "xorg-xdpyinfo"
  "xorg-xdriinfo"
  "xorg-xev"
  "xorg-xgamma"
  "xorg-xhost"
  "xorg-xinput"
  "xorg-xkbcomp"
  "xorg-xkbevd"
  "xorg-xkbutils"
  "xorg-xkill"
  "xorg-xlsatoms"
  "xorg-xlsclients"
  "xorg-xmodmap"
  "xorg-xpr"
  "xorg-xprop"
  "xorg-xrandr"
  "xorg-xrdb"
  "xorg-xrefresh"
  "xorg-xset"
  "xorg-xsetroot"
  "xorg-xvinfo"
  "xorg-xwd"
  "xorg-xwininfo"
  "xorg-xwud"
)

windowManager=(
  "bspwm"
  "sxhkd"
)

systemApps=(
	"zsh"
  "texlive-most"
  "texlive-lang"
  "adobe-source-code-pro-fonts"
)

zathura=(
  "zathura"
  "zathura-cb"
  "zathura-djvu"
  "zathura-pdf-mupdf"
  "zathura-ps"
)

programmingLanguages=(
  "go"
  "go-tools"
)

yayApps=(
  "polybar"
  "biber"
)

# Set Variables



# Functions

for i in "${xorgApps[@]}"
do
  echo $i
done
