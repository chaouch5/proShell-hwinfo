#!/bin/bash

sujet()
{
figlet Khalil_Wassim

    echo -e "***********************************************************************************************"



    echo -e "███████ ██    ██      ██ ███████ ████████ ██████ " 
    echo -e "██      ██    ██      ██ ██         ██         ██ "
    echo -e "███████ ██    ██      ██ █████      ██     █████  "
    echo -e        " ██ ██    ██ ██   ██ ██         ██    ██      "
    echo -e "███████  ██████   █████  ███████    ██    ███████" 


    echo -e "**********************************************************************************************"
                                                     

}



menu()
{
    echo "+++++++++++++++ Bienvenue ($USER) +++++++++++++++++++"
    echo "1)  : Lancer la commande hwinfo"
    echo "2)  : Lancer la commande lspci"
    echo "3)  : help"
    echo "4)  : Sauvfargder les informations pertinentes dans un fichier"
    echo "5)  : Affichier la version et les autheurs"
    echo "6)  : Afficher le menu graphique "
    echo "0)  : quit"
    echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
}



Hwinfo()
{
    hwinfo --short
}



Lspci()
{
    lspci
}



saveH()
{   
  
}



saveL()
{   
    
}



version()
{

  
}



afficherP()
{
   
}



afficherM()
{
   
    
}



helps()
{
  
}



helpsyad()
{
    
    
}



yadd()
{

    yad --title "sujet 2" --width 300  --height 200 --center --window-icon="/usr/share/sujet2/hj.png" --image="/usr/share/sujet2/h.jpg"  \
        yad  \
            --button="exit":1 \
            --button="help":2 \
            --button="lancer hwinfo":3 \
            --button="lancer lspci":4 \
            --button="sauvgarder lspi":5 \
            --button="sauvgarder hwinfo":6 \
            --button="version":7 \
            --title "sujet 2" \

            boutton=$?


                [[ $boutton -eq 1 ]] && exit 0


                if [[ $boutton -eq 2 ]]; then
                            helpsyad
                            yadd

                            elif  [[ $boutton -eq 3 ]]; then
                            Hwinfo
                            yadd

                            elif  [[ $boutton -eq 4 ]]; then
                            Lspci
                            yadd

                            elif  [[ $boutton -eq 5 ]]; then
                            saveL
                            yadd

                            elif  [[ $boutton -eq 6 ]]; then
                            saveH
                            yadd

                            elif  [[ $boutton -eq 7 ]]; then
                            version
                            yadd
                        
    fi
}
