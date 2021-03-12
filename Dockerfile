FROM flqw/avahi-alias:latest

# Unfortunately we need to build an image with new entrypoint, since variable substitution does not work in balena:
# https://www.balena.io/docs/reference/supervisor/docker-compose/#known-unsupported-features

# Extra name(s) can be supplied using the "CNAMES" variable

ENTRYPOINT []

CMD bash -c "/usr/local/bin/avahi-alias ${BALENA_APP_NAME}.local ${BALENA_DEVICE_NAME_AT_INIT}.local ${CNAMES}"
