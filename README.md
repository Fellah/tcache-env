# TCache

## User Data

Create user:

```
useradd \
    --create-home \
    --password [PASSWORD] \
    --groups docker \
    --shell /bin/bash \
    [USERNAME]
```

`[PASSWORD]` - encrypted password of the new account.

To generate it use command `mkpasswd --method=SHA-512 --rounds=4096` (via the package `whois`).

Put user public key to access by SSH:

```
cat <<EOT > /home/fellah/.ssh/authorized_keys
[PUBLIC_KEY]
EOT
```

`[PUBLIC_KEY]` - content of generated public key.

## Config TCache

`/home/fellah/leta/.config/tcache/tcache.env`

```
SLETAT_LOGIN=[LOGIN]
DB_CONNECTION=postgres://[USER]:[PASSWORD]@[HOST]/[DATABASE]?sslmode=disable
SLETAT_PASSWORD=[PASSWORD]
```

## Manage TCache

Start service.

```
$ systemctl --user start tcache.service
```

Stop service.

```
$ systemctl --user stop tcache.service
```

Restart service.

```
$ systemctl --user restart tcache.service
```

Check service status.

```
$ systemctl --user status tcache.service
```

## Monitoring TCache

Output container logs.

```
$ docker logs -f tcache.service
```

Output container statistics.

```
$ docker stats tcache.service
```
