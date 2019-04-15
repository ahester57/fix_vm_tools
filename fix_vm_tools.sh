#!/bin/bash

while true; do
    read -p "Reinstall VM tools now? " answer
    case $answer in
        y|Y|yes|YES)
            echo "Reinstalling..." &&
            sudo apt update &&
            sudo apt install --reinstall open-vm-tools open-vm-tools-desktop
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac

done


while true; do
    read -p "Reboot Now? " answer
    case $answer in
        y|Y|yes|YES)
            echo "Rebooting..." &&
            sudo reboot -i NOW
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac

done

