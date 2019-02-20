# Project Jumper
###### python, bash script, command line

Ever felt the need to move around multiple python projects and got tired of activating Virtual Environments ?

These scripts let you jump from one project to another while activating it's virtualenv as you go.

A few assumptions have been made in writing these scripts
1. You would like to keep all your projects in a single folder(I don't see why not)
2. You have basic understanding of python virtual environment and it's maintenance using requirements.txt
3. Your python project has the following structure
    ```
    main_project_folder/
        folder_1/
        folder_2/
        file_1.py
        file_2.py
        .
        .
        requirements.txt

    ````


### Step 1
Clone (Duh!) or Download with zip and extract it.
````
git clone https://github.com/arkRedM/bash-python-project-jumper.git
````
### Step 2
Change to folder bash-python-project-jumper give `execute` permissions to `setup_workon_makeEnv.sh`
```
cd bash-python-project-jumper
chmod u+x setup_workon_makeEnv.sh
```
### Step 3
Run the setup with your work folder as it's argument. `work folder` has to passed relative to user home.

`user-home` is where your Documents, Downloads, Videos etc. folders reside. You can directly go to it by pressing `cd` on terminal.

 So, if you want your work folder to be called `my_amazing_work` inside `Documents` folder then your relative path will be `Documents/my_amazing_work`

 Now run the following
 ```
 ./setup_workon_makeEnv.sh Documents/my_amazing_work
 ```
 Ideally this is your work folder where all your projects reside. So now go ahead and clone a project which has the above mentioned structure.
