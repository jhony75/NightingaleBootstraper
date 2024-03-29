# Links

dotfilesDir = "https://gitlab.com/jhony75/dotfiles"

binDir = "https://gitlab.com/jhony75/bin"

wallpapersDir = "https://gitlab.com/jhony75/wallpapers"

# Git commands

dmenuClone = "git clone https://git.suckless.org/dmenu"
paruClone = "git clone https://aur.archlinux.org/paru.git"

# ZSH Plugins clone

syntaxHighlighting = "git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

autosugestions = "git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions"

# Curlable installs

def ohmyzshInstall `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

def powerlevel10kInstall
  `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
end

def neovimPlugInstall
   `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
end

# Variables

$aurHelper = "paru"

makepkgPrograms = [
  paruClone,
]

makePrograms = [
  dmenuClone
]

# Services

#services = [
#  "lightdm",
#]

# Programs to be installed

programs = [
    xorgApps=[
    "xorg-server",
    "xf86-video-vesa",
    "xorg-bdftopcf",
    "xorg-docs",
    "xorg-font-util",
    "xorg-fonts-75dpi",
    "xorg-fonts-100dpi",
    "xorg-fonts-encodings",
    "xorg-iceauth",
    "xorg-mkfontscale",
    "xorg-server",
    "xorg-server-common",
    "xorg-server-devel",
    "xorg-server-xephyr",
    "xorg-server-xnest",
    "xorg-server-xvfb",
    "xorg-server-xwayland",
    "xorg-sessreg",
    "xorg-setxkbmap",
    "xorg-smproxy",
    "xorg-x11perf",
    "xorg-xauth",
    "xorg-xbacklight",
    "xorg-xcmsdb",
    "xorg-xcursorgen",
    "xorg-xdpyinfo",
    "xorg-xdriinfo",
    "xorg-xev",
    "xorg-xgamma",
    "xorg-xhost",
    "xorg-xinput",
    "xorg-xkbcomp",
    "xorg-xkbevd",
    "xorg-xkbutils",
    "xorg-xkill",
    "xorg-xlsatoms",
    "xorg-xlsclients",
    "xorg-xmodmap",
    "xorg-xpr",
    "xorg-xprop",
    "xorg-xrandr",
    "xorg-xrdb",
    "xorg-xrefresh",
    "xorg-xset",
    "xorg-xsetroot",
    "xorg-xvinfo",
    "xorg-xwd",
    "xorg-xwininfo",
    "xorg-xwud",
    "xorg-bdftopcf",
    "xorg-iceauth",
    "xorg-mkfontscale",
    "xorg-sessreg",
    "xorg-setxkbmap",
    "xorg-smproxy",
    "xorg-x11perf",
    "xorg-xauth",
    "xorg-xbacklight",
    "xorg-xcmsdb",
    "xorg-xcursorgen",
    "xorg-xdpyinfo",
    "xorg-xdriinfo",
    "xorg-xev",
    "xorg-xgamma",
    "xorg-xhost",
    "xorg-xinput",
    "xorg-xkbcomp",
    "xorg-xkbevd",
    "xorg-xkbutils",
    "xorg-xkill",
    "xorg-xlsatoms",
    "xorg-xlsclients",
    "xorg-xmodmap",
    "xorg-xpr",
    "xorg-xprop",
    "xorg-xrandr",
    "xorg-xrdb",
    "xorg-xrefresh",
    "xorg-xset",
    "xorg-xsetroot",
    "xorg-xvinfo",
    "xorg-xwd",
    "xorg-xwininfo",
    "xorg-xwud",
  ],

  windowManager=[
    "bspwm",
    "sxhkd",
  ],

  systemApps=[
    "zsh",
    "texlive-most",
    "texlive-lang",
    "alacritty",
    "neovim",
    "highlight",
    "neovim",
    "calcurse",
    "dosfstools",
    "exfat-utils",
    "sxiv",
    "xwallpaper",
    "man-db",
    "ntfs-3g",
    "unrar",
    "unzip",
    "youtube-dl",
    "mediainfo",
    "atool",
    "qtpass",
    "xdo",
    "lightdm",
    "reflector",
    "pacman-contrib",
    "stow",
    "pacutils",
    "exa",
    "bat",
    "ripgrep",
  ],

  zathura=[
    "zathura",
    "zathura-cb",
    "zathura-djvu",
    "zathura-pdf-mupdf",
    "zathura-ps",
  ],

  pulseAudio=[
    "pulseaudio-alsa",
    "pulseaudio-bluetooth",
    "pulseaudio-equalizer",
    "pulseaudio-jack",
    "pulseaudio-lirc",
    "pulseaudio-zeroconf",
    "pavucontrol",
  ],

  programmingLanguages=[
    "go",
    "go-tools",
    "node",
  ],

  fonts=[
    "adobe-source-code-pro-fonts",
    "ttf-jetbrains-mono",
    "ttf-inconsolata",
    "noto-fonts-emoji",
    "ttf-linux-libertine",
  ],
]

aurApps=[
  "polybar",
  "biber",
  "pistol",
  "alacritty",
  "lf",
  "brave-bin",
  "keybase-bin",
  "lightdm-webkit2-greeter",
  "lightdm-webkit-theme-aether",
  "vscodium-bin-marketplace",
]

# Function declarations

def install(name)
  `pacman -S #{name} --noconfirm --needed`
end

def aurInstall(array)
  array.each do |package|
    puts "#{$aurHelper} -S #{package} --noconfirm --needed --sudoloop"
  end
end

def makeInstall(folderName)
  `cd ~\\Documents\\.packages\\#{folderName}`
  `sudo make clean install`
end

def makepkgInstall(folderName)
  `cd ~\\Documents\\.packages\\#{folderName}`
  `makepkg -si`
end

# Main code

`cd ~`
`mkdir -p Documents\\.packages Pictures .local`
`cd Pictures`
`git clone #{wallpapersDir}`
`cd ~\\.local`
`git clone #{dotfilesDir} .`

programs.each do |software_array|
  software_array.each do |software_name|
    install(software_name)
  end
end

`sudo systemctl enable lightdm.service`
`chsh $(which zsh)`
`ohmyzshInstall`
`powerlevel10kInstall`
`neovimPlugInstall`