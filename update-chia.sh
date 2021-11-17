#!/bin/sh

cd /home/usuario/chia-blockchain

systemctl stop chia-farmer.service
systemctl disable chia-farmer.service

#. ./activate
#chia stop -d all
#deactivate

git fetch
git checkout latest
git reset --hard FETCH_HEAD --recurse-submodules

# If you get RELEASE.dev0 then delete the package-lock.json in chia-blockchain-gui and install.sh again

git status

# git status should say "nothing to commit, working tree clean", 
# if you have uncommitted changes, RELEASE.dev0 will be reported.

sh install.sh

. ./activate

chia init


# The GUI requires you have Ubuntu Desktop or a similar windowing system installed.
# You can not install and run the GUI as root
cd chia-blockchain-gui
git fetch
cd ..
chmod +x ./install-gui.sh
./install-gui.sh


systemctl start chia-farmer.service
systemctl enable chia-farmer.service
