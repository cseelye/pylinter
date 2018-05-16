# pylinter
Container for running pylint on both python2 and python3. The container is based on Alpine 3.7, with python 2.7.14 and 3.6.3.

## Usage
* Start the container with your python code mounted into it (I usually just mount my home directory so I have access to my code as well as my .pylintrc)
* Run pylint2 or pylint3 with all the standard pylint args

