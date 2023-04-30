FROM debian:11.6-slim

RUN apt update
RUN apt -yq install rsync openssh-client

# Label
LABEL "com.github.actions.name"="Deploy with rsync"
LABEL "com.github.actions.description"="Deploy to a remote server using rsync over ssh"
LABEL "com.github.actions.color"="green"
LABEL "com.github.actions.icon"="truck"

# Cloned from http://github.com/AEnterprise/rsync-deploy
LABEL "repository"="http://github.com/houseofmaldorne/rsync-deploy"
LABEL "homepage"="https://github.com/houseofmaldorne/rsync-deploy"
LABEL "maintainer"="neverbot <ivan@neverbot.com>"

ADD script.sh /script.sh
RUN chmod +x /script.sh
ENTRYPOINT ["/script.sh"]
