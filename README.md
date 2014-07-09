docker-TAO
==========

Dockernize TAO. 

What is TAO
------------------ 

[The ACE ORB (TAO)](http://www.dre.vanderbilt.edu/~schmidt/TAO-overview.html) , which is a standards-based, CORBA middleware
framework that allows clients to invoke operations on distributed
objects without concern for object location, programming language, OS
platform, communication protocols and interconnects, and
hardware. [ACE (ADAPTIVE Communication
Environment)](http://www.dre.vanderbilt.edu/~schmidt/ACE-overview.html)
is an OO framework that implements many core patterns of concurrent
communication software. Since TAO is built on ACE, ACE should be built first. See installation instructions.

Installation
--------------------------------

* Run ```build.sh```. The image name is yongfu/tao_ace. Replacing the name in ```build.sh``` if you like.

*  [Install TAO+ACE on Linux] (http://www.dre.vanderbilt.edu/~schmidt/DOC_ROOT/TAO/TAO-INSTALL.html)

* Compiling TAO+ACE is a really time-consuming process. So it is strongly suggested to pull the image from Docker's public repository directly.
```docker pull yongfu/tao_ace```
