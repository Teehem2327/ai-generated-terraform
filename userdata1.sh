#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
echo "<h1>Server 1 - AZ1</h1>" > /usr/share/nginx/html/index.html
systemctl enable nginx
systemctl start nginx
