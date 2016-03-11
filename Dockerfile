################################################################################
#                                                                              #
#                                 {o,o}                                        #
#                                 |)__)                                        #
#                                 -"-"-                                        #
#                                                                              #
################################################################################
#
# The jenkins container
#
#################################---INFO---#####################################

FROM jenkins:latest
MAINTAINER DevOps <devops@kendu.si>

################################################################################

#################################---ENV---######################################

ENV DEBIAN_FRONTEND noninteractive

################################################################################

################################---BUILD---#####################################

USER root
RUN apt-get update && apt-get upgrade -y; \
    apt-get -y install build-essential; \
    apt-get clean
USER jenkins

################################################################################
