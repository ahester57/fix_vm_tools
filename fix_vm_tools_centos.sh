#!/bin/bash

reinstall () {
    while true; do
        read -p "Reinstall VM tools now? " answer
        case $answer in
            y|Y|yes|YES)
                echo "Reinstalling..." &&
                sudo yum updateinfo &&
                sudo yum reinstall open-vm-tools open-vm-tools-desktop
                break;;
            n|N|no|NO)
                break;;
            *)
                echo "(y/n) ";;
        esac

    done
}

reboot () {
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
}


while true; do
    read -p "Is VM tools broken? " answer
    case $answer in
        y|Y|yes|YES)
            reinstall
            reboot
            exit;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac
done

while true; do
    read -p "Is something else broken? " answer
    case $answer in
        y|Y|yes|YES)
            reboot
            break;;
        n|N|no|NO)
            break;;
        *)
            echo "(y/n) ";;
    esac

done

