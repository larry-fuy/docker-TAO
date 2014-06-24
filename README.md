docker-TAO
==========

Dockernize TAO. 

What is TAO
------------------ 

The [ACE ORB (TAO)](http://www.dre.vanderbilt.edu/~schmidt/TAO-overview.html) , which is our standards-based, CORBA middleware
framework that allows clients to invoke operations on distributed
objects without concern for object location, programming language, OS
platform, communication protocols and interconnects, and
hardware. [ACE (ADAPTIVE Communication
Environment)](http://www.dre.vanderbilt.edu/~schmidt/ACE-overview.html)
is an OO framework that implements many core patterns of concurrent
communication software. Since TAO is built on ACE, when building TAO,
ACE should be built first. See following installation instructions.

[Installation instructions] (http://www.dre.vanderbilt.edu/~schmidt/DOC_ROOT/TAO/TAO-INSTALL.html)
--------------------------------

Compiling TAO+ACE is a very time-consuming process. So it is strong suggested to pull the image from Docker's public repository directly
```docker pull oci/TAO```