This script helps to automate REDHAT operating System patching and updates in an interactive mode.
How it works

Step 1 Updating a Single package
The user runs the script as root
The script checks for available updates and outputs to a file /Available_updates.txt
The scrpt opens the file using less command to display all available updates
When the user quits or exits from the file, the user will be asked with he or she needs to update a single package, else will skip to step 2.
When te user enters Y to accept.
The script prompts the user to enter the package name
When the user clicks enter, the script will update the package and prompts the user whether to install the updates or decline.
Ones the update is done, the script will check the available updates and output the results to a file ~/1_single_package_updates.txt . 
Then, the script will open the file using less command to display if we still have updates on that package. This will help the user to know whether they have updated the package successfully.
Ones done, the script will run exit command to exit and display a message "Congratulation Updates on selected package is done!"

Step 2 Updating multiple packages
If the user skipped step 1 (updating a single package), the script will prompt requesting if the user wishes to update multiple packages. To accept the user should enter Y else will skip to  step 3
If the user accepts, the script will prompt requesting a user to enter the package names seperated by a single spacing.
When the user enters the package names, the script will run updates on those packages and prompt the user to either accept or decline to install updates.
Ones the updates are done, the script will check the available updates and output the results to a file ~/2_multiple_package_updates.txt
Then, the script will open the file using less command to display if we still have updates on that package. This will help the user to know whether they have updated the packages successfully.
Ones done, the script will run exit command to exit and display a message "Congratulations Updates on selected packages is done!"

step 3 Excluding package(s)
If the user skipped step 2 (Updating multiple packages), the script will prompt requesting if the user wishes to exclude some package(s). To accept the user should enter Y else will skip to  step 4
If the user accepts, the script will prompt requesting a user to enter the package(s) to exclude, multiple packages should be separated with a comma.
When the user enters the packages names, the script will run  updates on the remaining packages  except the excluded ones. The user will  be prompted to either  accept or decline to install the available updates.
Ones the updates are done, the script will check the available updates and output the results to a file ~/2_multiple_package_updates.txt
Then, the script will open the file using less command to display if we still have updates. This will help the user to know whether they have updated the packages successfully.
Ones done, the script will run exit command to exit and display a message "Congratulations Updates on selected packages are done!"

step 4 Updating all packages
If the user skipped step 3 (excluding package(s)), the script will prompt requesting if the user wishes to update all packages. To accept the user should enter Y else will skip to  step 5
If the user accepts, the script will run updates on all available packages. The user will be prompted  to accept or decline to install updates.
Ones the updates are done, the script will check the available updates and output the results to a file ~/Available_updates.txt
Then, script will open the file using less command to display if we still have updates. This will help the user to know whether they have updated successfully.
Ones done, the script will run exit command to exit and display a message "Congragulations all packages are up to date!"

step 5 No updates to be done
If the user skipped step 4 (Updating all packages), the script will check the available updates and output the results to a file ~/Available_updates.txt
Then, the script will open the file using less command to display the available updates. This will help the user to know the available updates.
Ones done, the script will run exit command to exit and display a message "No updates done!" followed by "Kindly ensure your system and applications are up to date!"
