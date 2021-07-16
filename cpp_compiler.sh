#!/data/data/com.termux/files/usr/bin/bash

echo "MINI COMPILER FOR C++"
read -p "Enter File Name : " file_name
echo
read -p "Enter Output Name : " out_put

if [[ -s ${file_name} ]]
    then
       $(g++ ${file_name} -o ${out_put})
        echo "Compiled Successfully to ${out_put}"

        read -p "Would You Like To Run Output? yes/no " choice
            if [ $choice == "yes" ]
                then
                    chmod +x $out_put
                    ./$out_put
            else
                echo "Please Run Your Output Yourself Then."

            fi


else
    echo "${file_name} Does Not Exist."
fi

