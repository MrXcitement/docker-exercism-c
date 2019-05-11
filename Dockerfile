FROM mrbarker/exercism-base:0.1.1
LABEL maintainer="mike@thebarkers.com" \
      description="An exercism 'c' track image." \
      version="0.1.3"

RUN apt-get update \
    && apt upgrade -y \
    && apt-get install -y build-essential

WORKDIR /root/exercism

ENTRYPOINT ["bash"]
CMD ["--login"]
