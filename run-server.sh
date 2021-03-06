#!/bin/bash

# Script that runs python microscope server.
# Ensure that this file has been given executable privileges.
# Execute this script by running in terminal, to be able to enter the password.
# IF this script crashes instantly, try restarting raspberry pi by turning off power for 5 seconds.



# Run server
echo -e "\n  This is the Raspberry Pi microscope server."
echo -e "  Run this script BEFORE run-client-cmd or run-client-gui."
echo -e "  If it isn't loading, make sure you're connected to PiNet.\n\n"
echo -e "Type the Raspberry Pi password:"
read PASS

sshpass -p $PASS ssh pi@192.168.1.1 Documents/PhysicsSummer/CameraPython/launcher.sh

# Keep terminal open after closing server
#$SHELL
