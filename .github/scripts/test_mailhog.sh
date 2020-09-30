#!/bin/bash

telnet localhost 1025 << EOF
HELO cloudflare.com
MAIL FROM:<test@test.com>
RCPT TO:<test2@test.com>
DATA
Body of email.
.
QUIT
EOF
if [ $? -eq 0 ]
then
  echo "Telnet command returned 0"
else
  exit 0
fi
