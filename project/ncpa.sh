apt-get install  git ca-certificates libsqlite3-0 -y

cd /tmp/

git clone https://github.com/Ajeetkumargupta/nagios

cd nagios

mv ncpa-2.1.9.d10.amd64.deb /tmp/

cd ..

rm -r nagios

dpkg -i ncpa-2.1.9.d10.amd64.deb

cd

sed -i '/ community-string = mytoken /s/^/#/'  /usr/local/ncpa/etc/ncpa.cfg

sed -i '163  ccommunity-string = ajit123' /usr/local/ncpa/etc/ncpa.cfg

systemctl restart ncpa_listener
