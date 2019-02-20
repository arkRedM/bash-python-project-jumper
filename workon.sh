#!/bin/bash

# jumping to your work folder
function goto_work()
{
    # goto home
	cd
	# path to your work directory from home
	cd Documents/work
}

# jump to folder and activate env :P
function jump_to_folder_and_activate_env()
{
    # activate the virtualenv
	source vEnv/$1/bin/activate || source vEnv/$1bin/activate
	# change to project folder
	cd $1
}

{
    # goto work folder
    goto_work
    # activate the env and jump into the project
    activate_ven $1
} || {
    echo "Check Code and retry"
}