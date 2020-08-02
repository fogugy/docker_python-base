FROM ubuntu

RUN TZ=Europe/Moscow \
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
    && apt-get update \
    && apt-get install -y tzdata \
    && apt-get install -y wget gcc build-essential checkinstall libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev \
    && cd /opt \
    && wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz \
    && tar -xvf Python-3.6.3.tgz \
    && cd Python-3.6.3 \
    && ./configure \
    && make \
    && make install \
    && ln -s /usr/local/bin/python3 /usr/bin/python \
    && ln -s /usr/local/bin/pip3 /usr/bin/pip \
    && pip install --upgrade pip