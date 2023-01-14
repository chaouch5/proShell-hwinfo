#!/bin/bash

. fonctions.sh

    sujet


    if [ $# != "0" ];then


        while getopts "f:o:ihlpvmgs" opt
    do
    case $opt in
            i) Hwinfo
    ;;
            p) Lspci
    ;;
            h) helps
    ;;
            l) saveL
    ;;
            s) saveH
    ;;
            o) afficherP $OPTARG 
    ;;
            f) afficherM $OPTARG $fichier
    ;;        
            g) yadd
    ;;
            v) version
    ;;
            m) menu 
        

          while (true)
    do

    echo "Votre choix : "
    read choix
    case $choix in


    1)
        clear
        echo "Vous avez lancer la commande hwinfo"
        Hwinfo
        menu
    ;;


    2)
        clear
        echo "Vous avez lancer la commande lspci"
        lspci
        menu
    ;;


    3)
        clear
        echo "Vous avez Selectioner la fonction Help"
        helps
        menu
    ;;


    4)
        clear
        sav=5
        echo " (1:(lspci) , 0:(hwinfo) )"
        read sav
        clear

            if [ $sav == "1" ];then
        saveL
            else 
        clear
        saveH
        menu
            fi
    ;;


    5)
        clear
        echo "Vous avez Selectioner la fonction Version"
        version
        menu
    ;;


    6)
        clear
        echo "Vous avez Selectioner le menu graphique"
        yadd
        menu
    ;;
    
    
    0)
        clear
        echo "Au revoir ($USER)"
        exit
    ;;


    *)
        clear
        echo "mauvais choix ! (choisir un nombre entre 0 et 6)"
        menu
    ;;

            esac

            done                                              

            esac
            done
            fi

