#!/bin/bash


read -p "Insert your desired login" login 
read -s -p "Insert your desired password: " password 

timedatectl set-ntp true
pacstrap /mnt base linux linux-firmware base-devel
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
/usr/share/zoneinfo/America/Sao_Paulo
hwclock --systohc
echo LANG=en_US.UTF-8 >> /etc/locale.conf
echo KEYMAP=br-abnt2 >> /etc/vconsole.conf
echo "arch" > /etc/hostname
echo -e "127.0.0.1\tlocalhost.localdomain\tlocalhost\n::1\tlocalhost.localdomain\tlocalhost\n127.0.1.1\tarch.localdomain\tmeuhostname" > /etc/hosts

useradd -m -g wheel -s /bin/zsh "$login" >/dev/null 2>&1 ||
usermod -a -G wheel "$login" && mkdir -p /home/"$login" && chown "$login":wheel /home/"$login"
export repodir="/home/$login/.local/src"; mkdir -p "$repodir"; chown -R "$login":wheel "$(dirname "$repodir")"
echo "$login:$password" | chpasswd

pacman -S grub-efi-x86_64 efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch_grub --recheck
cp /usr/share/locale/en@quot/LC_MESSAGES/grub.mo /boot/grub/locale/en.mo
grub-mkconfig -o /boot/grub/grub.cfg