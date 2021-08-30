#!/bin/sh

sudo cp ./chaingreen-farmer.service /etc/systemd/system/chaingreen-farmer.service
sudo systemctl reload-or-restart --now chaingreen-farmer.service 
sudo systemctl enable --now chaingreen-farmer.service
