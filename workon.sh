#!/bin/bash


target=${1%/}


# jumping to your work folder
function goto_work()
{
    # this function is created by setup script
    change_to_the_formidable_work_folder
    {
        deactivate 2>/dev/null
    }
}

# jump to folder and activate env :P
function jump_to_folder_and_activate_env()
{
    # activate the virtualenv
    source vEnv/$target/bin/activate || echo "Create a virtualEnvironment using makeEnv"

    # change to project directory
    cd $1 || echo "No such project"
}

{
    # goto work folder
    goto_work
    # activate the env and jump into the project
    jump_to_folder_and_activate_env $target
} || {
    echo "Check Code and retry"
}