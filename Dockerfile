FROM debian:9
LABEL maintainer="mike@thebarkers.com" \
      description="An exercism 'c' track image." \
      version="0.1.1"

# Update, upgrade and install dev tools
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y git procps tree vim wget 

# Install exercism tool
RUN cd /tmp \
    && wget https://github.com/exercism/cli/releases/download/v3.0.11/exercism-linux-64bit.tgz \
    && tar xzf exercism-linux-64bit.tgz \
    && mv exercism /usr/local/bin/

# Install c/c++ build chain
RUN apt-get install -y build-essential cmake cppcheck valgrind

WORKDIR /root/exercism

CMD ["bash", "--login"]
