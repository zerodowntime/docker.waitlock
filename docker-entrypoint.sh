#!/bin/sh

while [ ! -f "${WAIT_FILE?}" ]; do
  >&2 echo "waiting for ${WAIT_FILE} ..."
  sleep "${WAIT_SECONDS?}"
done

>&2 echo "Got it! Cleanup and exit."

rm -f "$WAIT_FILE"

exit 0
