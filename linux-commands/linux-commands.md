# Linux Commands And Uses

- free :- This is used to display the free and used memory<br/>
options are : h (for human readable), m (for MB), g (for GB)<br/>
eg free -h should output <img src="./free.png" alt="free">

- chmod :- This is a command used too change the assess mode of a file.<br/>
Syntax is :- chmod <\reference><\operator><\mode> file. <br/>
The reference means the user groups to give the permission; we have three groups which are owner(u), group(g) and others(o). <br/>
The operator specifies how to adjust the modes/permission. There are three also: to add(+), to remove(-), exact(=).<br/>
The modes indicate the permissions to be added or removed. We have three which are: read(r), write(w), execute a file or search a dir(x). <br/>
eg to give owner the permission to run a file as an executable use chmod u+x filename. <img src=./chmod.png alt="chmod">

- less :- To shows the content of a file.<br/>
Syntax is :- less <\filename> <br/>
eg less execute <br/>
<img src="./less.png" alt="less">

- printenv :- to print out global environment variables<br/>
eg printenv <img src="./printenv.png" alt="printenv">

- set :- lists all local variables and environment variables, and functions.<br/>
eg set <img src="set.png" alt="set">

- export :- This is used to create a local variable. note to create a global variable, do not use export, just the variable name and value is fine. <br/>
syntax is export variable_name=variable_value<br/>
eg export SCHOOL=altschool <img src="export.png" alt="export">

- find : This is used to search the file directory for a file.<br/>
syntax :- In its simplest form -- find -name <\filename/matches><br/>
eg find -name "execute" <img src="find.png" alt="find">

- wc :- stands for word count. It is mainly used for counting purpose. It displays no of lines, words and characters in that order<br/>
syntax :- wc [option] [file] <br/>
eg '''wc execute''' <img src="wc.png" alt="wc">

- sort :- this sorts the content of a file in ASCII order. The result can be piped into another file. <br/>
syntax :- sort [filename]<br/>
eg sort unsorted.txt <img src="sort.png" alt="sort">
