#!/bin/bash

#This template is for builidng a script that takes multiple command line switches and parameters.
#Example:  bash thisfile.sh -a param1 param2 -b param3 param4 -c param5
#Both the switches and parameters can be entered in any order.

#The script is best used to set variables in place of the echo'd lines to control IF statements in the Main body.
#Be sure to update the first two cases (ex: -a), -b | -c)) in each parameter list accordingly.

#Outter loop to cycle switches.
while [ -n "$1" ]
do
case "$1" in

    #Switch 1 (-a)
    -a) while [ -n "$1" ]  #Inner loop to cycle parameters
        do
            case "$1" in
                -a)        #Current switch, do nothing.
                    ;;
                -b | -c)   #Have hit a new switch, stop the loop and move on.
                    break;;
                param1)
                    echo "Parameter 1 selected."
                    ;;
                param2)
                    echo "Parameter 2 selected."
                    ;;
                *) 
                    echo "Invalid entry of $1.  Exiting"
                    exit;;
            esac
            shift
        done;;
    
    #Switch 2 (-b)
    -b) while [ -n "$1" ]  #Inner loop to cycle parameters
        do
            case "$1" in
                -b)        #Current switch, do nothing.
                    ;;
                -a | -c)   #Have hit a new switch, stop the loop and move on.
                    break;;
                param3)
                    echo "Parameter 3 selected."
                    ;;
                param4)
                    echo "Parameter 4 selected."
                    ;;
                *) 
                    echo "Invalid entry of $1.  Exiting"
                    exit;;
            esac
            shift
        done;;
      
    #Switch 3 (-c)
    -c) while [ -n "$1" ]  #Inner loop to cycle parameters
        do
            case "$1" in
                -c)        #Current switch, do nothing.
                    ;;
                -a | -b)   #Have hit a new switch, stop the loop and move on.
                    break;;
                param5)
                    echo "Parameter 5 selected."
                    ;;
                param6)
                    echo "Parameter 6 selected."
                    ;;
                *) 
                    echo "Invalid entry of $1.  Exiting"
                    exit;;
            esac
            shift
        done;;
        
    *) shift;;
    esac
done

#Add main body below.