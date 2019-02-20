#!/bin/bash

# jumping to your work folder
function goto_work()
{
    # this function is created by setup script
    change_to_the_formidable_work_folder
}

# jump to folder and activate env :P
function jump_to_folder_and_activate_env()
{
    # activate the virtualenv
    {
        {
            source vEnv/$1/bin/activate 2>/dev/null

        } || {
            source vEnv/$1bin/activate 2>/dev/null
        }
        cd $1 2>/dev/null
    } || {
         echo "No such project"
         echo "Create a virtualEnvironment using makeEnv"
    }

}
	# change to

{
    # goto work folder
    goto_work
    # activate the env and jump into the project
    jump_to_folder_and_activate_env $1
} || {
    echo "Check Code and retry"
}