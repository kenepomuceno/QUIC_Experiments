#get caddy
wget 'https://caddyserver.com/download/build?os=linux&arch=amd64&features=' -O caddy.tar.gz
#unpack and decompress
tar -zxf caddy.tar.gz
#make sure openssl is installed
sudo apt-get install openssl
#add mahimahi apt repo and install it
sudo add-apt-repository ppa:keithw/mahimahi
sudo apt-get update
sudo apt-get install mahimahi
#clone our git repo
git clone git@gitlab.gprt.ufpe.br:igor.nogueira/ca.git
cd ca
#fix cnf files default path
sed -i 's,$HOME,'"$HOME"',g' ./intermediate/openssl.cnf
sed -i 's,$HOME,'"$HOME"',g' openssl.cnf
#install our custom ca bundle
sudo mkdir /usr/share/ca-certificates/extra
sudo cp intermediate/ca-chain.cert.pem /usr/share/ca-certificates/extra/GPRT.ctr
sudo dpkg-reconfigure ca-certificates
