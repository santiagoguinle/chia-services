#!/bin/sh

sudo cp ./chia-plotter.service /etc/systemd/system/chia-plotter.service
sudo systemctl reload-or-restart --now chia-plotter.service 
sudo systemctl enable --now chia-plotter.service
