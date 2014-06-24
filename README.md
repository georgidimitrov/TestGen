TestGen
=======
###Program task.
Creates a numbers of pdf tests with pdf answers.

Files:
``` 
 Main.rb
 Tests.rb
 Numbers.rb
 PDFGen.rb
``` 

###To use the program you must compile it.
Example:
```
$ ruby Main.rb arg
```
arg is a positive int, declares the number of tests you want to generate.

In order for the program to run you will need Prawn.
If you do not have Prawn:
```
$ sudo gem install prawn
```  
And if you are missing gems:
``` 
$ sudo apt-get install rubygems
``` 
