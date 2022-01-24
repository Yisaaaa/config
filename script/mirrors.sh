#! /bin/bash


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