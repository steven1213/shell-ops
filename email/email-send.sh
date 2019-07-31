#!/bin/bash
#author steven
#use shell command mail to send e-mail
EMAIL_FILE=email.txt
rm -rf $EMAIL_FILE

if [ -z $1 ];then
	echo -e "033[\32m--------------------\33[0m"
	echo "Useage: $0 to"
	exit;
fi

cat > $EMAIL_FILE <<EOF
#################################################
Hi,Name

This is a Linux shell script send email test.

Please ignore.
################################################
EOF

mail -s "mail test" $1  < $EMAIL_FILE

if [ $? -eq 0 ];then
	echo "mail send success."
else
	echo "mail send failure."
fi
