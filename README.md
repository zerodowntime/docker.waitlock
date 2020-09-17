# docker.waitlock

## Docker Pull Command
```bash
docker pull zerodowntime/waitlock
```

## Docker Run Command
```bash
# default settings:
docker run --rm --name wait_test zerodowntime/waitlock

# custom sleep delay:
docker run --rm --name wait_test -e WAIT_SECONDS=1 zerodowntime/waitlock

# custom filename:
docker run --rm --name wait_test -e WAIT_FILE=/die zerodowntime/waitlock
```

## Stopping
```bash
docker exec wait_test touch /run/waitlock
```
