#!/bin/bash
#greeting the user
echo "Hello, nice to meet you."
echo 'What type of project do you want to make?
      1)-Python
      2)-Bash
      3)-None, I want to exit.'

#accepting user choice      
read choice
case $choice in
	1)echo "So you want a python project."
	  read -p "What should this project be named?" name
	  #verifying if virtualenv is installed using the exit code
          virtualenv --version 2>&1 > /dev/null
	  if[[ $?!=0 ]]; then #if not installed, inform the user how to install it

			    echo "You don't have the tool needed to create a virtual environment. For that, use \"pip install virtualenv\""
          else               
		              #if installed create a project folder with a virtual env, a README for additional guidance and a starter file for the project.
			    mkdir ~/"$name"_project
		            cd ~/"$name"_project
                            touch "$name"_starter_file.py README
                            virtualenv "$name"_project_env
			    echo 'Hello user. Thank you for trying out the project initialization script.
			          Here you will mainly receive guidelines on how to work on your python projects.
				  There are some lines at the end of this file for tips on overall project management, though.

				  To begin with working on a python project, you need a text editor. I strongly recommend vscode since it`s the one I also use.
				  You can also edit your python codes via terminal by using built-in tools such as vim or nano by running "vim file_to_edit" or 
				  "nano file_to_edit" when in the parent directory of the file.
				  To run your python codes in the terminal just use "python3 file_to_be _run." when in the parent directory of the file.
				  I also recommend installing libraries such as jupyter, numpy, matplotlib, pandas and seaborn in your virtual environment so as to
				  enhance the versatility of your programs. By running jupyter noteook, you even get an REPL environment to work with on your codes!
                                  To activate the virtual environment, once into the project folder type:
				  source name_of_project/bin/activate
				  That is all I can tell you on how to work on your python projects. For more information, visit google or other helpful sites.
                                  
                                  _________________________________________________________________________________________________________________________________
				  
				  Hello user, Here I`ll go over the general set up of any project, be it python or bash. 
				  Python and bash projects mainly consist of codes which are written in files. Typically, files for python codes have the ".py" exten
				  sion while bash scripts the ".sh" extension; remeber this when creating files for your various codes.
				  Text editors are required in both cases, VScode is a really good choice since it can help writing codes for both bash and python
				  if extensions for them are installed.
			          The terminal can also be used to edit codes for both files using tools such as nano and vim. Also, it allows you to you to run them 
				  by using the interpreter name and then the path of the file( or just the file name if in its parent directory) e.g.
				  bash path_to_file

				  That`s all; have a nice day!
                                 ' > README
			    echo "A directory for your python project has been created together with a virtual environment for you to work with in it."
			    echo "A README file will also be there to guide you. Have fun working on your project!"
	  fi;;
       2)echo "I see you want a bash project."
	read -p "What should this project be named?" name
        mkdir ~/"$name"_project
        cd ~/"$name"_project
         touch "$name"_starter_file.sh README
	 echo "A directory for your bash project has been created together with a starter file for you to work with in it."
         echo "A README file will also be there to guide you. Have fun working on your project!"
	 
       	echo 'Hello user. Thank you for trying out the project initialization script.
	      Here you will mainly receive guidelines on how to work on your bash projects.
	      There are some lines at the end of this file for tips on overall project management, though.

              Bash projects are mainly handled using bash scripts which are used to automate tasks. To write a bash script, you can use built-in editors such as 
	      nano and vim on your terminal by typing for instance
	      nano file_or_path_to_the_file
	      The script can be executed by invoking the bash interpreter like so
	      bash file_or_path_to_the_file     - or simply,         ./file_or_path_to_the_file
	      where file_or_path_to_the_file is a place holder for the file path or for the file`s name if in the parent directory.
	      Sometimes you one may not have the permissions to execute scripts or to read their contents.
	      Running: chmod ugo+rx file_or_path_to_the_file will fix this by giving the permission to read and to execute the script to 
	      everyone but only the people you want will be able to modify it.


              _________________________________________________________________________________________________________________________________
				  
	      Hello user, Here I`ll go over the general set up of any project, be it python or bash. 
	      Python and bash projects mainly consist of codes which are written in files. Typically, files for python codes have the ".py" exten
	      sion while bash scripts the ".sh" extension; remeber this when creating files for your various codes.
	      Text editors are required in both cases, VScode is a really good choice since it can help writing codes for both bash and python
	      if extensions for them are installed.
	      The terminal can also be used to edit codes for both files using tools such as nano and vim. Also, it allows you to you to run them 
	      by using the interpreter name and then the path of the file( or just the file name if in its parent directory) e.g.
	      bash path_to_file

	      That`s all; have a nice day!
              '	> README
        ;;
       3)echo "Okay, Goodbye....."
	       break;;
       *)echo "invalid choice, enner 1,2 or 3"
	       ;;
esac

