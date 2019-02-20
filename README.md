# Project Jumper
###### python, bash script, command line

Ever felt the need to move around multiple python projects and got tired of activating Virtual Environments ?
These scripts let you jump from one project to another while activating it's virtualenv as you go.

For making a virtual env
```
$ makeEnv my_project
```
For jumping into a project and activating it's virtual env
```
$ workon my_project
(my_project)user@user-pc: <path_to_my_project> $
```

**A few assumptions have been made in writing these scripts**
1. You would like to keep all your projects in a single folder(I don't see why not)
2. You have basic understanding of python virtual environment and it's maintenance using requirements.txt
3. Your python project has the following structure
    ```
    my_project_folder/
        folder_1/
        folder_2/
        file_1.py
        file_2.py
        .
        .
        requirements.txt

    ````


### Step 1
Clone this repo (Duh!) or Download zip and extract it.
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

 So, if you want your work folder to be called `my_amazing_work_folder` which is inside `Documents` folder then your relative path will be `Documents/my_amazing_work_folder`

 Now run the following
 ```
 ./setup_workon_makeEnv.sh Documents/my_amazing_work_folder
 ```
 Ideally this is your work folder where all your projects reside. So now go ahead and clone a project which has the above mentioned structure.

## Step 4(Almost There!)
You can now run `makeEnv` over a project folder.

This will create a folder called vEnv which will contain a virtual env of your project with the same name
```
makeEnv example_project_1
```
You can make this with as many projects as you like as long as they have different names and follow the structure mentioned above

```
makeEnv example_project_2
```
### Finally
You can jump from any project from terminal and activate it's virtual env now by typing 
```
workon example_project_1
```
you can also jump to another project while working on one project with the same
```
workon example_project_2
```

# Scope
There are many things that can be improved here.

1. Code Style
2. Error catching and better debugging
3. Down the line makeEnv and workon should be able to work from any folder regardless of where the project might be.

PR's are most welcome ʕ•ᴥ•ʔ
