# Initialise the development by grabbing assets
mkdir ~/creation_script/assets
git clone https://github.com/rollingrhinoremix/distro ~/creation_script/assets
# Perform system upgrade
apt update -y
apt upgrade -y
# Move all required assets to the correct directories
apt autoremove -y
mv ~/creation_script/assets/rolling_rhino.png /usr/share/backgrounds
mv ~/creation_script/assets/rolling_rhino-dark.png /usr/share/backgrounds
mv ~/creation_script/assets/.bashrc /etc/skel
mv ~/creation_script/assets/.bash_aliases /etc/skel
mv ~/creation_script/assets/.sources.sh /etc/skel
rm -rf /etc/os-release
mv ~/creation_script/assets/os-release /etc
rm -rf /usr/share/glib-2.0/schemas/10_ubuntu-settings.gschema.override 
mv ~/creation_script/assets/10_ubuntu-settings.gschema.override /usr/share/glib-2.0/schemas
# Install rhino-config onto system 
mkdir ~/creation_script/rhino-config
cd ~/creation_script/rhino-config
wget https://github.com/rollingrhinoremix/rhino-config/releases/download/v2.0.1/rhino-config
chmod +x ~/creation_script/rhino-config/rhino-config
mv ~/creation_script/rhino-config/rhino-config /usr/bin
# Download the mainline Linux kernel packages
mkdir ~/creation_script/kernel
cd ~/creation_script/kernel
wget -q --show-progress --progress=bar:force https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.17.7/amd64/linux-headers-5.17.7-051707-generic_5.17.7-051707.202205121146_amd64.deb
wget -q --show-progress --progress=bar:force https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.17.7/amd64/linux-headers-5.17.7-051707_5.17.7-051707.202205121146_all.deb
wget -q --show-progress --progress=bar:force https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.17.7/amd64/linux-image-unsigned-5.17.7-051707-generic_5.17.7-051707.202205121146_amd64.deb
wget -q --show-progress --progress=bar:force https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.17.7/amd64/linux-modules-5.17.7-051707-generic_5.17.7-051707.202205121146_amd64.deb
# Install the packages via apt
sudo apt install ./*.deb
# Alert user that the script has completed
echo "SCRIPT HAS COMPLETED - DELETING SCRIPT FILES"
echo "DO NOT DELETE GIT FROM SYSTEM"
cd ~
rm -rf creation_script
