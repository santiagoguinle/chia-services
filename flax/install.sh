#!/bin/sh

sudo cp ./flax-farmer.service /etc/systemd/system/flax-farmer.service
sudo systemctl reload-or-restart --now flax-farmer.service 
sudo systemctl enable --now flax-farmer.service
