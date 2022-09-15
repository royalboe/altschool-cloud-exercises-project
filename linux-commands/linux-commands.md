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
