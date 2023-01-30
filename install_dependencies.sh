#!/bin/bash
if ! [ -x "$(command -v httpd)" ]; then yum install -y httpd >&2;   exit 1; fi # install apache if not already installed
sudo yum install -y php php-{pear,cgi,common,curl,mbstring,gd,mysqlnd,gettext,bcmath,json,xml,fpm,intl,zip,imap}
