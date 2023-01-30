#!/bin/bash
if ! [ -x "$(command -v httpd)" ]; then yum install -y httpd >&2;   exit 1; fi # install apache if not already installed
sudo yum install -y amazon-linux-extras
sudo yum update
sudo amazon-linux-extras | grep php
sudo amazon-linux-extras enable php8.1
yum clean metadata
yum install php-cli php-pdo php-fpm php-json php-mysqlnd php-gd
