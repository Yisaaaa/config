#! /bin/bash


function rankmirror() {
    echo "ranking mirrors"
    echo

    MIRRORS=$(rankmirrors -q -s mirrors.txt)
    mv "/etc/pacman.d/mirrorlist" "/etc/pacman.d/mirrorlist_bak"
    touch "/etc/pacman.d/mirrorlist"
    echo MIRRORS >> "/etc/pacman.d/mirrorlist"
    echo MIRRORS
    echo
    pacman -Syyu
}


function checkMirror.txt() {
    FILES=$(ls *.txt)

    echo $FILES; echo

    FILE_EXIST="false"
    for file in $FILES
        do
            if [ $file == "mirrors.txt" ]
                then
                    echo "file exist"
                    FILE_EXIST="false"
            fi
        
    done

    if [ $FILE_EXIST == "false" ]
        then 
        echo "mirrors.txt is not found"
    fi
}