#!/bin/bash

sudo yum check-update > ~/Available_updates.txt
less ~/Available_updates.txt
echo 'Do you wish to update a single package? (Enter Y to Accept)'
read Option
if [ $Option == Y ]
then
echo 'Enter package Name'
read name
sudo yum update  $name
sudo yum check-update  $name > ~/1_single_package_updates.txt
less ~/1_single_package_updates.txt
echo 'Congratulation Updates on selected package is done!'
exit

else

echo 'Do you wish to update Multiple packages?(Enter Y to Accept)'
fi
read Option
 if [ $Option == Y ]
then
echo 'Enter package names separated by a single spacing'
read name1
sudo yum update  $name1
sudo yum check-update $name1 > ~/2_multiple_package_updates.txt
less ~/2_multiple_package_updates.txt
echo 'Congratulation Updates on selected packages are done!'
exit

else

echo 'Do you wish to exclude  specific  package(s)? (Enter Y to Accept)'
fi
read Option
if [ $Option == Y ]
then
echo 'Enter name(s) package(s) to Exclude (Separate packages by a comma(,))'
read name2
sudo yum update -x $name2
sudo yum check-update > ~/3_latest_updates.txt
less ~/3_latest_updates.txt
echo 'Congratulations Updates on selected packages are done!'
exit

else
 
echo 'Do you wish to update all  package(s)? (Enter Y to Accept)'
fi
read Option
if [ $Option == Y ]
then
echo 'WARNING: You are about update all Available packages! Type Y and Enter to Accept'
fi
read Option
if [ $Option == Y ]
then
sudo yum update
sudo yum check-update > ~/Available_updates.txt
less ~/Available_updates.txt
echo 'Congragulations all packages are up to date!'
exit

else

echo 'No updates done!'
sudo yum check-update > ~/Available_updates.txt
less ~/Available_updates.txt
echo 'Kindly ensure your system and applications are up to date!'
fi
