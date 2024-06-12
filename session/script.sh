echo "--install Apache --"

## installing apache with dnf
dnf install httpd -y

## starting apache service
systemctl start httpd

## verify status apache
systemctl status httpd | grep "Active"

## enable  apache service
systemctl enable httpd

## write htmls

echo "This is an automated apache server" > /var/www/html/index.html

