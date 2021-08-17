# avahi-alias-balena

Extra mdns/avahi cnames with balena.

This dockerfile will expose the application name and device id as extra `.local` hostnames on top of the `uuid123.local` that balena already provides.

## Usage
Example usage in a docker-compose file:

```yaml
  avahi-alias-balena:
    image: nobleo/avahi-alias-balena
    privileged: true
    network_mode: host
    environment:
      - DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
      - CNAMES="nobleo.local my-address.local"
    labels:
      io.balena.features.dbus: '1'
```

## See also
https://github.com/nobleo/balena-chrony.git
