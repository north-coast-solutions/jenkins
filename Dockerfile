FROM jenkins/jenkins

ENV DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

COPY ./gitversion /usr/local/bin