mkdir ~/creation_script/assets
apt-get install git
git clone https://github.com/rollingrhinoremix/distro ~/creation_script/assets
apt update -y
apt upgrade -y
apt autoremove -y
mv ~/creation_script/assets/rolling-rhino.png /usr/share/backgrounds
mv ~/creation_script/assets/.bashrc /etc/skel
mv ~/creation_script/assets/.bash_aliases /etc/skel
mv ~/creation_script/assets/.sources.sh /etc/skel
rm -rf /etc/os-release
mv ~/creation_script/assets/os-release /etc
rm -rf /usr/share/glib-2.0/schemas/10_ubuntu-settings.gschema.override 
mv ~/creation_script/assets/10_ubuntu-settings.gschema.override /usr/share/glib-2.0/schemas
# Finish with rhino-config 
mkdir ~/creation_script/rhino-config
cd ~/creation_script/rhino-config
wget https://github.com/rollingrhinoremix/rhino-config/releases/download/v2.0.1/rhino-config
chmod +x ~/creation_script/rhino-config/rhino-config
mv ~/creation_script/rhino-config/rhino-config /usr/bin
# Alert user that the script has completed
echo "SCRIPT HAS COMPLETED - DELETING SCRIPT FILES"
echo "DO NOT DELETE GIT FROM SYSTEM"
cd ~
rm -rf creation_script
