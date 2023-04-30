sudo apt update -y
sudo apt install apache2
sudo systemctl enable httpd
sudo ufw app list
sudo ufw allow 'Apache'
sudo systemctl status apache2
sudo systemctl start apache2
sudo echo '<h1>HELLO AND WELCOME TODAY'S CLASS IS ON TERRAFORM</h1>' | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
sudo echo '<!DOCTYPE html> <html> <body style="background-colour:rgb(250,210,210);"> <h1>HELLO AND WELCOME TODAY'S CLASS IS ON TERRAFORM</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html
sudo curl http://   /latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html



