FROM ubuntu
MAINTAINER Yong Fu <larry.yong.fu@hotmail.com>

RUN apt-get update -q
RUN apt-get install -y wget
RUN apt-get install -y build-essential

# ACE + TAO
RUN wget  http://download.dre.vanderbilt.edu/previous_versions/ACE+TAO-6.2.0.tar.gz
RUN tar -xvf ACE+TAO-6.2.0.tar.gz -C /opt
ENV ACE_ROOT /opt/ACE_wrappers
ENV TAO_ROOT $ACE_ROOT/TAO
ENV PATH $PATH:$ACE_ROOT/bin
# there is a bug in Docker so we cannot use (https://github.com/dotcloud/docker/issues/2637)
# ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:$ACE_ROOT/lib
# instead
ENV LD_LIBRARY_PATH $ACE_ROOT/lib

ADD config.h /opt/ACE_wrappers/ace/config.h
ADD platform_macros.GNU /opt/ACE_wrappers/include/makeinclude/platform_macros.GNU

# build ACE first
RUN cd $ACE_ROOT/ace;make
#build gperf
RUN cd $ACE_ROOT/apps/gperf/src;make
RUN cd $TAO_ROOT;make
