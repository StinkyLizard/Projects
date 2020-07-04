#! /bin/bash

echo -e "Enter the name of then script you want to create : \c"
read file_name

if [ -e $file_name ]
then
echo "$file_name File Founded"
else
echo "$file_name File not founded"
fi

read -p "Can we create $file_name for you Y/N ?: " user_var
if [ $user_var == "Y" ] || [ $user_var == "Yes" ] || [ $user_var == "y" ] || [ $user_var == "yes" ]
then
touch $file_name
chmod +x $file_name
echo "#! /bin/bash" > $file_name
mv $file_name $file_name.sh
fi

if [ -e $file_name.sh ]
then
read -p "Can we open the file with a text editor ($file_name) Y/N ?" user_var
fi
if  [ $user_var == "Y" ] || [ $user_var == "Yes" ] || [ $user_var == "y" ] || [ $user_var == "yes" ]
then
nano $file_name.sh
fi
