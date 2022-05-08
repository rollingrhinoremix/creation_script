#!/bin/bash

mkdir ~/creation_script/{assets,rhino-config}

{ apt update -y && apt upgrade -y; }

which git &> /dev/null || {
    apt install git
}

git clone https://github.com/rollingrhinoremix/distro ~/creation_script/assets

apt autoremove -y

mv ~/creation_script/assets/rolling-rhino.png /usr/share/backgrounds
mv ~/creation_script/assets/.{bashrc,bash_aliases,sources.sh} /etc/skel

rm -f /etc/os-release
mv ~/creation_script/assets/os-release /etc

rm -f /usr/share/glib-2.0/schemas/10_ubuntu-settings.gschema.override
mv ~/creation_script/assets/10_ubuntu-settings.gschema.override /usr/share/glib-2.0/schemas

# Finish with rhino-config
cd ~/creation_script/rhino-config
wget https://github.com/rollingrhinoremix/rhino-config/releases/download/v2.0/rhino-config
chmod +x ~/creation_script/rhino-config/rhino-config
mv ~/creation_script/rhino-config/rhino-config /usr/bin

# Alert user that the script has completed
echo "SCRIPT HAS COMPLETED - DELETING SCRIPT FILES"
echo "DO NOT DELETE GIT FROM SYSTEM"
cd ~
rm -rf creation_script
