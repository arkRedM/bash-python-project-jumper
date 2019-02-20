#!/usr/bin/env bash

BASEDIR=$PWD

# make a folder name vEnv inside your work directory
function make_folder_if_not_exists(){
    echo "making folder $1 if not exist"
    cd
    mkdir -p $1
}

# make an alias to work folder and append to the end of bashrc
function make_an_alias_to_work_folder_in_bashrc() {
    # make folder passed as argument if it doesn't exist.
    make_folder_if_not_exists $1

    echo "adding work folder alias to bashrc"
    echo "change_to_the_formidable_work_folder()
    {
        cd
        cd '$1'
    }" >> ~/.bashrc
}

# add workon and makeEnv alias to bashrc
function add_alias_to_workon_and_makeEnv_in_bashrc(){
    echo "Adding workon and makeEnv alias to bashrc"
    echo "alias workon='. $BASEDIR/workon.sh'" >> ~/.bashrc
    echo "alias makeEnv='. $BASEDIR/makeEnv.sh'" >> ~/.bashrc


    source ~/.bashrc
    echo "Success"
    echo "Make Virtual Environment using
    makeEnv project_folder"
    echo "Note that project folder must contain requirements.txt file"
    echo "Jump into a project using
    workon project_folder"
}

# pass the work path relative to home('home' is generally where your Documents, Videos etc. folders reside)
make_an_alias_to_work_folder_in_bashrc $1
add_alias_to_workon_and_makeEnv_in_bashrc
