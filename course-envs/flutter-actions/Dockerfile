FROM ubuntu:latest
RUN apt update && \
    apt install -y git curl unzip && \
    git clone https://github.com/flutter/flutter.git && \
    ./flutter/bin/flutter precache
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
