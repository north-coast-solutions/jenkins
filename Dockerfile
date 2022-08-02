FROM jenkins/jenkins

USER root


#GitVersion
RUN apt update && apt install wget
RUN wget -qO- https://github.com/GitTools/GitVersion/releases/download/5.10.3/gitversion-linux-x64-5.10.3.tar.gz | tar xvz -C /usr/local/bin
ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1


#Docker
ADD install-docker.sh /
RUN chmod +x /install-docker.sh
RUN /install-docker.sh
