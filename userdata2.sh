#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
echo "<h1>Server 2 - AZ2</h1>" > /usr/share/nginx/html/index.html
systemctl enable nginx
systemctl start nginx
