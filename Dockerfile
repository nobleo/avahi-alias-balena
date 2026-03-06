FROM phusion/baseimage:noble

RUN apt-get update && apt-get install -y \
python3-avahi \
&& rm -rf /var/lib/apt/lists/*

COPY ./avahi-alias.py /usr/local/bin/avahi-alias
RUN chmod +x /usr/local/bin/avahi-alias

ENTRYPOINT []

CMD bash -c "/usr/local/bin/avahi-alias ${BALENA_DEVICE_NAME_AT_INIT}.local ${CNAMES}"
