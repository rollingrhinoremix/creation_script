mkdir ~/creation_script/assets
git clone https://github.com/rollingrhinoremix/distro ~/creation_script/assets
apt update -y
apt upgrade -y
apt install git
apt autoremove -y
mv ~/creation_script/assets/rolling-rhino.png /usr/share/backgrounds
mv ~/creation_script/assets/.bashrc /etc/skel
mv ~/creation_script/assets/.bash_aliases /etc/skel
mv ~/creation_script/assets/.sources.sh /etc/skel
rm -rf /etc/os-release
mv ~/creation_script/assets/os-release /etc
rm -rf /usr/share/glib-2.0/schemas/10_ubuntu-settings.gschema.override 
mv ~/creation_script/assets/10_ubuntu-settings.gschema.override /usr/share/glib-2.0/schemas
echo "SCRIPT HAS COMPLETED - DELETING SCRIPT FILES"
echo "DO NOT DELETE GIT FROM SYSTEM"
cd ~
rm -rf creation_script
