FROM ubuntu:latest
COPY entrypoint.sh /entrypoint.sh
RUN apt update && \
    apt install -y git curl unzip && \
    git clone https://github.com/flutter/flutter.git && \
    export PATH="$PATH:`pwd`/flutter/bin"
ENTRYPOINT ["/entrypoint.sh"]