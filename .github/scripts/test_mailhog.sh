#!/bin/bash

function success_exit { echo -e 1>&2; exit 0; }

# create message
function mail_input {
echo "HELO mailog.lokal"
echo "MAIL FROM: <test@test.com>"
echo "RCPT TO: <test2@test.com>"
echo "DATA"
echo "From: <test@test.com>"
echo "To: <test2@test.com>"
echo "Subject: Testing SMTP Mail"
echo "This is only a test. Please do not panic. If this works, then all is well, else all is not well."
echo "."
echo "QUIT"
}

mail_input | telnet $MAIL_HOST $MAIL_PORT || success_exit
