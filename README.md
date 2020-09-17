# docker.waitlock

## Docker Pull Command
```bash
docker pull zerodowntime/waitlock
```

## Docker Run Command
```bash
docker run --rm --name wait_test zerodowntime/waitlock
```

## Stopping
```bash
docker exec wait_test touch /run/waitlock
```
