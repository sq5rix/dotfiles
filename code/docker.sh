docker version
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo vi /etc/systemd/system/docker.service.d/proxy.conf
sudo systemctl daemon-reload
sudo systemctl restart docker.service
docker run hello-world
docker pull kartoza/postgis
