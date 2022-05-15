This repository is archived. We now utilise RRR-builder to generate our disk images, the repositories are found here: [RRR-builder (Ubuntu Desktop)](https://github.com/rollingrhinoremix/rrr-builder-full) and [RRR-builder (Minimal ISO)](https://github.com/rollingrhinoremix/rrr-builder-minimal)

# Rolling Rhino Remix - Creation Script
The Rolling Rhino Remix creation script generates a fresh disk image from files in https://github.com/rollingrhinoremix/distro

## How to create your own disk image of Rolling Rhino Remix using this script.

Firstly you will need to install Cubic, you can install it [here](https://launchpad.net/cubic).

Once cubic has been installed, download the latest disk image that Ubuntu has released. This should typically be a daily build. If none are available use a Beta or Release disk image.

Next you will have to select a directory to create your disk image in, I recommend you create a folder in your home directory called "iso".

Once you have done that you will need to select the disk image you are going to edit, it should be in your download directory. Once finished you will need to put the information for your custom disk. It should be as follows:

- Version: Current date, should be selected by default
- Filename: rolling-rhino-YEAR-MONTH-DAY.iso
- Volume ID: Rolling Rhino Remix YEAR.MONTH.DAY
- Release: LEAVE BLANK
- Release URL: https://rollingrhino.org
- OS Release: UNCHECK

Once that has been done, and you enter chroot, you will need to follow the steps below:
- Install Git in the Cubic terminal with `apt install git` 
- clone this repository with `git clone https://github.com/rollingrhinoremix/creation_script`. 
- Once this has been done please go into the directory with `cd ~/creation_script` 
- run the script with `bash script.sh`

#### Credits:
- Script created by: [MrBeeBenson](https://mrbeebenson.github.io)
