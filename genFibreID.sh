#!/bin/bash

USERNAME=$1
AUTHSTRING=00:00:00:00:00:00:00:00:00:00:00:1a:09:00:00:05:58:01:03:41:01:0d

for (( i=0; i<${#USERNAME}; i++ )); do
        HEXCHAR=$(echo -n ${USERNAME:$i:1} | od -An -txC | xargs)
        AUTHSTRING=${AUTHSTRING}:${HEXCHAR}
done
echo ${AUTHSTRING}
