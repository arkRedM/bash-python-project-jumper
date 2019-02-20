#!/usr/bin/env bash

# jumping to your work folder
function goto_work()
{
    # this function is created by setup script
    change_to_the_formidable_work_folder
}

# make a folder name vEnv inside your work directory
function make_vEnv_folder_if_not_exists(){
    mkdir -p vEnv
}

# make a virtualenv for your project --- assuming you have a 'requirements.txt' file.
# only executed after going into your work folder
function make_env()
{
    # make vEnv folder inside work folder and change to the same
    make_vEnv_folder_if_not_exists
	cd vEnv

	# make a python virtualenv with same name as the project's name
	python3 -m virtualenv $1

	# activate the virtualenv
	source $1/bin/activate || source $1bin/activate

	# install the requirements
	cd ..
	pip3 install -r $1/requirements.txt
}

{
    # change to work
	goto_work
	# make environment
	make_env $1

    # jump to folder and activate it.
	workon $1
} || {
	echo "Check Code and retry"
}
