#!/bin/sh

sudo cp ./chia-farmer.service /etc/systemd/system/chia-farmer.service
sudo systemctl reload-or-restart --now chia-farmer.service 
sudo systemctl enable --now chia-farmer.service

