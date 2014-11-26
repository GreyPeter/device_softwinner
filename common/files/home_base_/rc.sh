#!/system/bin/sh

# 777 dans la racine
chmod 777 /home/*
# pour le httpd
chmod -R 777 /home/httpd/*
# pour avoir le dossier /mnt en ecriture
mount -o remount,rw foo /

if [ -f /home/modules.sh ]
then
	/home/modules.sh
fi

/home/tcpip.sh

echo ==================================================
if [ -f /home/start ]
then
	echo Programme start:
    echo   Effacement eventuel de start_request.
	    rm /home/start_request
    echo   Renom de start en start_request.
	    mv /home/start /home/start_request
    echo   Execution de start_request.
	    /home/start_request
    echo   Effacement de start_request.
	    rm /home/start_request
    echo   Sychronisation.
	    sync
else
	echo Programme start non present
fi
echo ==================================================
 
if [ -f /home/system.exe ]
then
	/home/system.exe &
else
	echo Programme 'system' absent !
fi

if /home/SW 7
then
    echo SW7 en haut, demarrage auto

    if /home/SW 2
    then
        echo SW2 en haut, application

		if /home/startup -checkficcmd
		then
			/home/startup -runficcmd &
		else
			if [ -f /home/runme.sh ]
			then
				/home/runme.sh
			else
				echo Programme 'appli' absent !
				if [ -f /home/startup ]
				then
					/home/startup &
				else
					echo Programme 'startup' absent !
				fi
			fi
		fi
    else
        echo SW2 en bas, lancement de startup

    	if [ -f /home/startup ]
    	then
      		/home/startup &
    	else
    		echo Programme 'startup' absent !
    	fi
    fi
else
	echo SW7 en bas, mode developpement
fi
