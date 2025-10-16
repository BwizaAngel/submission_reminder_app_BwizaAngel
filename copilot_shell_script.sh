#!/bin/bash

parent="submission_remainder_*/"
star="startup.sh"
config="./submission_remainder_*/config/config.env"
continuation="y"
assignment_name="" # Initialize the variable to hold the user's input

copilot_function() {
    # The assignment name is passed as the first argument
    assignment="$1"

    if [ ! -d $parent ]; then
        sleep 0.9
        echo "The directory doesn't exist. Please run the file create_environment.sh"
        echo " "
        exit 1
    else
        sed -i "s/ASSIGNMENT=\".*\"/ASSIGNMENT=\"$assignment_name\"/" $config

        echo "Processing '$assignment' assignment"


        cd $parent
        if [ ! -f $star ]; then
            echo "Error: $star not found."
            exit 1
        else
            ./$star
            cd ..
        fi
    fi
}

while [[ "$continuation" == "y" || "$continuation" == "Y" ]]; do
    echo " "
    echo "Which assignment do you want to check?"
    echo "Example options:
Shell Navigation
Shell Basics
Git"

    # Read the assignment name directly into assignment_name
    read -p "Enter the assignment name: " assignment_name

    # Call the function, passing the name the user typed
    copilot_function "$assignment_name"

    echo " "
    read -p "Do you want to analyze another assignment (y/n): " continuation
done

echo -e "Exiting"
