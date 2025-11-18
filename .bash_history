sudo useradd -m -s /bin/bash jazmin
sudo passwd jazmin
sudo su
cd /etc/sudoers.d/
cat << FIN > jazmin
>  jazmin ALL=(ALL) NOPASSWD:ALL
> FIN
chmod u-w jazmin
chmod o-r jazmin

sudo apt install git
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible

# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl status docker

sudo systemctl start docker

sudo docker run hello-world


sudo usermod aG docker jazmin
sudo usermod -aG docker jazmin
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
lsblk -f
lsblk
sudo fdisk /dev/sdd
lsblk
sudo fdisk /dev/sdd
lsblk
pv create /dev/sdc1 /dev/sdc2 /dev/sdd1 /dev/sdd2 
sudo  pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1 /dev/sdd2
sudo vgcreate vg_datos /dev/sdc2 /dev/sdd1
sudo vgs
sudo vgcreate vg_temp /dev/sdd2 /dev/sdc1
sudo vgs
sudo lvmcreate -L 5MB vg_datos -n lv_docker
sudo lvcreate -L 5MB vg_datos -n lv_docker
sudo vgs
sudo lvcreate -L 1.5gB vg_datos -n lv_workareas
sudo vgs
sudo fdisk -l
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
ansible --version
docker --version
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mkdir /work/ 
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo lvs
sudo vgdisplay
sudo pvs
ls -l /dev/mapper
sudo pvs
sudo systemctl restart docker
sudo systemctl status docker 
sudo lvs
[200~lsblk -f~
lsblk -f
cd ~
ls -l
pwd
cd ..
ls -l
sudo git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
sudo ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
ls -l
cd UTN-FRA_SO_Examenes/
LS -L
ls -l
cd ..
ls -l
sudo git clone ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406 
ls -l
cd ..
mkdir RTA_Examen_2025_1911
sudo  mkdir RTA_Examen_2025_1911
ls -l
cd RTA_Examen_2025_1911/
ls -l
cat << FIN > Punto_A.sh 
FIN

history
sudo pvs
sudo vgs
lsbkl
lsblk
lsblk -f
sudo vgs
sudo umount /var/lib/docker
sudo umount /work
sudo swapoff -a
sudo umount /var/lib/docker
sudo systemctl stop docker
sudo systemctl stop docker.socket 
sudo umount /var/lib/docker
sudo umount /work
sudo swapoff -a
sudo lvremove /dev/vg_datos/lv_docker -y
sudo lvremove /dev/vg_datos/lv_workareas -y
sudo lvremove /dev/vg_temp/lv_swap -y
sudo vgremove vg_datos -y
sudo vgremove vg_temp -y
sudo pvremove /dev/sdc1 -y
sudo pvremove /dev/sdc2 -y
sudo pvremove /dev/sdd1 -y
sudo pvremove /dev/sdd2 -y
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
lsblk -f
sudo pvs
sudo vgs
sudo lvs
lsblk -f
sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
lsblk
pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1 /dev/sdd2
sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1 /dev/sdd2
udo vgcreate vg_datos /dev/sdc2 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc2 /dev/sdd1
sudo vgcreate vg_temp /dev/sdd2 /dev/sdc1
sudo vgs
sudo lvcreate -L 5MB vg_datos -n lv_docker
sudo lvcreate -L 1.5gB vg_datos -n lv_workareas
sudo lvs
sudo vgs
sudo lvcreate -L 512mb vg_temp -n lv_swap
sudo vgs
sudo lvs
sudo pvs
lsblk -f
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
ls -l
cd ~
pwd
cd ..
ls -l
cd RTA_Examen_2025_1911/
sudo mkdir /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo systemctl restart docker
sudo vgs
sudo lvs
lsblk -f
lsblk
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cat Lista_Usuarios.txt 
cd ..
sudo fdisk /dev/sdd
sudo fdisk -l /dev/sdd
sudo fdisk -l /dev/sdc
cd /home/UTN-FRA_SO_Examenes/202406/bash_script
cd /usr/local/bin/
ls -l
sudo vim LuqueAltaUser-Groups.sh
ls -l
cd ..
cd /home/UTN-FRA_SO_Examenes/202406
ls -l
cd bash_script/
ls -l
cat Lista_Usuarios.txt 
cd /usr/local/bin
ls -l
vim LuqueAltaUser-Groups.sh 
sudo vim LuqueAltaUser-Groups.sh 
cat LuqueAltaUser-Groups.sh 
sudo (grep "vagrant" /etc/shadow | awk -F ':' '{print $2}')
sudo /etc/shadow
sudo cat /etc/shadow
sudo cat /etc/shadow | grep -i jazmin
sudo cat /etc/shadow | grep -i jazmin | awk -F ':' '{print $2}'
vim LuqueAltaUser-Groups.sh 
sudo vim LuqueAltaUser-Groups.sh 
cat LuqueAltaUser-Groups.sh 
sudo vim L
sudo vim LuqueAltaUser-Groups.sh 
cat LuqueAltaUser-Groups.sh 
sudo vim LuqueAltaUser-Groups.sh 
cat vim LuqueAltaUser-Groups.sh 
bash ./LuqueAltaUser-Groups.sh Lista_Usuarios.txt
bash -x ./LuqueAltaUser-Groups.sh Lista_Usuarios.txt
ls -l
cd /home/UTN-FRA_SO_Examenes/202406/bash_script
ls -l
cat Lista_Usuarios.txt 
pwd
bash -x /usr/local/bin/LuqueAltaUser-Groups.sh Lista_Usuarios.txt
cd /usr/local/bin
sudo vim LuqueAltaUser-Groups.sh 
cat /usr/local/bin/LuqueAltaUser-Groups.sh
bash -x /usr/local/bin/LuqueAltaUser-Groups.sh Lista_Usuarios.txt
pwd
ls -l
cd ~
ls -l
cd ..
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
bash -x /usr/local/bin/LuqueAltaUser-Groups.sh Lista_Usuarios.txt
cat /usr/local/bin/LuqueAltaUser-Groups.sh
ls -l
cat Lista_Usuarios.txt 
cd /usr/local/bin
sudo vim LuqueAltaUser-Groups.sh 
cd /home/UTN-FRA_SO_Examenes/202406/bash_script
bash LuqueAltaUser-Groups.sh Lista_Usuarios.txt
ls -ld /work/2P_202406_*
sudo cat /etc/shadow
sudo cat /etc/shadow | grep -i :$y$j9T$FzPNRflCHhUFo3KiL0US
su 2P_202406_Prog1
cd ~
cd ..
ls -l
cd RTA_
cd RTA_Examen_2025_1911/
ls -l
cat << fin > Punto_B.sh
./LuqueAltaUser-Groups.sh
fin

cd home/UTN-FRA_SO_Examenes/202406/bash_script
cd home/UTN-FRA_SO_Examenes/202406
ls -l
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cd /usr/local/bin
ls -l
cat LuqueAltaUser-Groups.sh 
sudo vim LuqueAltaUser-Groups.sh 
cat LuqueAltaUser-Groups.sh 
sudo vim LuqueAltaUser-Groups.sh 
cat LuqueAltaUser-Groups.sh 
sudo vim LuqueAltaUser-Groups.sh 
cat LuqueAltaUser-Groups.sh 
cd ~
cd ..
ls -l
cd RTA_Examen_2025_1911/
ls -l
sudo cat << fin > Punto_B.sh
bash /usr/local/bin/LuqueAltaUser-Groups.sh jazmin Lista_Usuarios.txt
fin

mv LuqueAltaUser-Groups.sh /home/RTA_Examen_2025_1911
cd /usr/local/bin
sudo  mv LuqueAltaUser-Groups.sh /home/RTA_Examen_2025_1911
cd /home/RTA_Examen_2025_1911$
cd /home/RTA_Examen_2025_1911
ls -l
cat << fin > Punto_b.sh
bash /usr/local/bin/LuqueAltaUser-Groups.sh jazmin Lista_Usuarios.txt
fin

sudo  cat << fin > Punto_b.sh
bash /usr/local/bin/LuqueAltaUser-Groups.sh jazmin Lista_Usuarios.txt
fin

sudo chmod u+w
sudo cat /etc/passwd
sudo cat /etc/sudoers.d
sudo cd /etc/sudoers.d
sudo su
sudo vim Punto_b.sh
ls -l
./Punto_b.sh
sudo ./Punto_b.sh
pwd
sudo chmod +x Punto_b.sh
sudo bash Punto_b.sh
sudo chmod +x Punto_b.sh
sudo bash Punto_b.sh
ls -l
sudo vim Punto_b.sh 
cat Punt
cat Punto_b.sh 
sudo vim Punto_b.sh 
cat Punto_b.sh 
sudo vim Punto_b.sh 
bash Punto_b.sh 
sudo bash Punto_b.sh 
sudo chmod +x LuqueAltaUser-Groups.sh
sudo ./Punto_b.sh
sudo bash Punto_b.sh 
sudo vim Punto_b.sh 
sudo bash Punto_b.sh 
sudo vim Punto_b.sh 
sudo bash Punto_b.sh 
ls -l
su 2P_GTest
su 2P_202406_Prog2
cat Punto_b.sh 
ls -l
cat LuqueAltaUser-Groups.sh 
cat Punto_b.sh 
sudo vim LuqueAltaUser-Groups.sh 
cat Punto_b.sh 
cat LuqueAltaUser-Groups.sh 
sudo vim LuqueAltaUser-Groups.sh 
vim LuqueAltaUser-Groups.sh 
cat LuqueAltaUser-Groups.sh 
cat Punto_b.sh 
sudo vim LuqueAltaUser-Groups.sh 
cat LuqueAltaUser-Groups.sh 
cat Punto_b.sh 
ls -l
cd *~~
cd ~
ccd ..
cd ..
ls -l
cd RTA_Examen_2025_1911/
ls -l
sudo ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
sudo git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
ls -l
remove UTN-FRA_SO_Examenes/
rmdir UTN-FRA_SO_Examenes/
sudo rmdir UTN-FRA_SO_Examenes/
sudo rm -r UTN-FRA_SO_Examenes/
ls -l
cd ..
ls -l
cd RTA
cd RTA_Examen_2025_1911/
LS -L
ls -l
cd ..
ls -l
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
sudo git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git --version
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
pwd
cd jazmin
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc
ls -l
cd RTA_Examen_20251117/
ls -l
cat Punto_A.sh 
LS -L
ls -l
cat Punto_A.sh 
cd ..
cd /home/RTA_Examen_2025_1911$
cd /home/RTA_Examen_2025_1911
ls -l
rm LuqueAltaUser-Groups.sh ~/RTA_Examen_20251117
mv  LuqueAltaUser-Groups.sh ~/RTA_Examen_20251117
sudo mv  LuqueAltaUser-Groups.sh ~/RTA_Examen_20251117
cd ..
rm RTA_Examen_2025_1911/
rm -r RTA_Examen_2025_1911/
LS -L
ls -l
rm RTA_Examen_2025_1911/
rmdir RTA_Examen_2025_1911/
sudo rmdir RTA_Examen_2025_1911/
sudo rmdir -r RTA_Examen_2025_1911/
rm -r RTA_Examen_2025_1911/
ls -l
sudo  rm -r RTA_Examen_2025_1911/
ls -l
sudo  rm -r UTN-FRA_SO_Examenes/
ls -l
cd jazmin
ls -l
cd RTA_Examen_20251117/
LS -L
ls -l
sudo vim Punto_B.sh 
history
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd bash_script/
ls -l
cat Lista_Usuarios.txt 
cd ~/RTA_Examen_20251117/
ls -l
sudo vim Punto_B.sh 
sudo bash Punto_B.sh
sudo vim Punto_B.sh 
sudo bash Punto_B.sh 
bash Punto_B.sh 
sudo vim Punto_B.sh 
bash Punto_B.sh
cat Punto_B.sh
tree
tree ls
ls -l
cat LuqueAltaUser-Groups.sh 
cat Punto_B.sh
history
bash Punto_B.sh
su 2P_202406_Prog2
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
ls -la
cat index.html 
vim index.html 
sudo usermod -a -G docker jazmin
docker login -u jazminutn
ls -l
vim dockerfile
docker build -t jazminutn/web1-Luque:latest .
docker build -t jazminutn/web1-luque:latest .
ls -l
cat dockerfile 
vim dockerfile 
docker build -t jazminutn/web1-luque:latest .
docker image list
docker push jazminutn/web1-luque:latest
vim run.sh
cat run.sh 
sudo vim run.sh 
bash run.sh 
history
cat dockerfile 
cd ~
ls -l
cd RTA_Examen_20251117/
ls -l
cd Punto_C
cd Punto_C.sh
vim Punto_C.sh 
cat Punto_C.sh
cd ~/UTN-FRA_SO_Examenes/202406/docker
ls -l
cat run.sh
bash run.sh
cat dockerfile 
cat index.html 
vim dockerfile 
cd ~
ls -l
cd RTA_Examen_20251117/
ls -l
vim Punto_C.sh
cat Punto_C.sh
chmod +x Punto_c.sh
./Punto_C.sh
sudo ./Punto_C.sh
bash Punto_C.sh
vim Punto_C.sh
bash Punto_C.sh
ls -l
cat Punto_B.sh
exit
sudo su jazmin
exit
cat ~/.bash_history
cd ~
ls -l
cd RTA_Examen_20251117/
ls -l
vim Punto_A.sh 
cat Punto_A.sh
vim Punto_A.sh
cat vim Punto_A.sh
lsbkl -f
lsblk -f
vim Punto_A.sh
cat Punto_A.sh
cat Punto_B.sh
ls -l
cat LuqueAltaUser-Groups.sh 
cat Punto_C.sh
vim Punto_C.sh
ls -l
cat dockerfile
cd ..
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
cat dockerfile
cd ~/RTA_Examen_20251117
ls -l
rm -r dockerfile
ls -l
docker rm -f $(docker ps -aq) 2>/dev/null
docker rmi jazminutn/web1-luque:latest
docker pull jazminutn/web1-luque:latest
docker run -d -p 8080:80 jazminutn/web1-luque:latest
docker ps
docker ps -a
docker logs <ID>
docker logs 192.168.56.3
docker logs dbbbb7e4dd29
docker exec -it dbbbb7e4dd29 bash
docker exec -it dbbbb7e4dd29 cat /usr/share/nginx/html/index.html
curl http://127.0.0.1:8080
exit
cd ~
curl http://192.168.56.3:8080
history
docker ps
docker pull jazminutn/web1-luque:latest
docker run -d -p 8080:80 jazminutn/web1-luque:latest
docker ps
curl http://127.0.0.1:8080
curl http://192.168.56.3:8080
cd ~
vim .bash_history
pvd
pwd
cd 
history
cat ~/.bash_history
ls -l
cd ~
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cat script_Precondicion.sh 
cd ..
cd ~
grep -i "apt" ~/.bash_history
su vagrant
history
sudo apt install git
sudo apt install ansible
sudo docker run hello-world
vim .bash_history
sudo vim .bash_history
vim ~/.bash_history
rm ~/.bash_history.swp 2>/dev/null
vim ~/.bash_history
sudo vim ~/.bash_history
rm ~/.bash_history.swp
sudo rm ~jazmin/.bash_history.swp
sudo vim ~/.bash_history
sudo chattr -a ~/.bash_history
sudo chattr +a ~/.bash_history
cat ~/.bash_history
docker ps
docker pull jazminutn/web1-luque:latest
ls -l
cd RTA_Examen_20251117/
ls -l
cat Punto_C
cat Punto_C.sh
docker run -d -p 8080:80 jazminutn/web1-luque:latest
docker ps
docker ps -a
cd ..
cd UTN-FRA_SO_Examenes/
ls -l
cd 202406
ls -l
cd docker
ls -l
cat dockerfile
cat index.html
cat run.sh
curl localhost:80
docker ps
docker ps -a
curl localhost:80
sudo docker run -d -p 80:80 --name web1-container jazminutn/web1-luque:latest
curl localhost:80
cat dockerfile 
cat run.sh 
cat index.html 
cd ~/RTA_Examen_20251117
cat Punto_C.sh
cd ..
cd UTN-FRA_SO_Examenes/
cd 20246
cd 202406
ls -l
cd ansible/
ls -l
cat roles
cd roles
ls -l
cd 2do_parcial/
ls -l
cd ..
cat playbook.yml 
cat ansible.cfg 
cd ..
cd ansible/
ls -l
cd inventory/
cd roles
cd ..
cd roles/
ls -l
cd 2do_parcial/
LS -L
ls -l
cd tasks/
ls -l
cat main.yml 
vim main.yml 
cd ..
ls -l
cd ..
ls -l
cd 2do_parcial/
ls -l
mkdir templates
ls -l
vim templates/datos_alumno.j2
ls -l
cd templates/
ls -l
vim datos_equipo.j2
ip a
ls -l
cd ..
ls -l
cd tasks/
vim main.yml
cat main.yml 
vim main.yml 
cd ..
ls -l
cd templates/
ls -l
hostname
hostname -I
cat /etc/os-release
nproc
vim datos_equipo.j2 
cat datos_equipo.j2 
vim datos_equipo.j2 
cd ..
ls -l
cd ..
ls -l
cd ..
ls -l
cat playbook.yml 
cd roles/
ls -l
cd 2do_parcial/
ls -l
cd tasks+
cd tsks
cd tasks
ls -l
vim main.yml 
cat main.yml 
vim main.yml 
cd ..
ls -l
cd ..
ansible-playbook -i inventory playbook.yml
ansible-playbook -i inventory/hosts playbook.yml
ls -l
cd inventory/
ls -l
cat host
cat hosts
ls -l
cd ~
cd RTA_Examen_20251117/
ls -l
wim Punto_D.sh
vim Punto_D.sh
docker run -d -p 80:80 jazminutn/web1-luque:latest
sudo docker run -d -p 80:80 jazminutn/web1-luque:latest
docker ps
sudo docker stop 0804897c79d6
sudo docker stop b83882792299
docker ps
cat Punto_C.sh
vim Punto_C.sh
cd ~/UTN-FRA_SO_Examenes/202406
cd docker
vim run.sh
curl http://192.168.56.3:80
docker ps
cd ..
ls -l
sudo apt install tree
cd /
ls -l
cd tmp
tree
~/UTN-FRA_SO_Examenes/202406/docker
cd ~/UTN-FRA_SO_Examenes/202406/docker
ls -l
cat run.sh
/tmp$ tree
cd /tmp$ 
cd /tmp
tree
cat datos_alumno.txt
cd 2do_parcial/
cat datos_alumno.txt 
cd ..
cd equipo/
cat datos_equipo.txt 
~/UTN-FRA_SO_Examenes/202406/docker
cd ~/UTN-FRA_SO_Examenes/202406/docker
vim run.sh 
bash run.sh
docker ps
docker stop de064690255b
docker ps
cat run.sh 
docker pull jazminutn/web1-luque:latest
docker run -d -p 80:80 jazminutn/web1-luque:latest
docker ps
curl http://192.168.56.3:80
cd ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks
vim main.yml 
cd ..
ls -l
cd templates/
ls -l
vim datos_equipos.j2
cat datos_equipo.j2 
vim datos_equipo.j2
cat datos_equipo.j2 
cd ~
docker ps
docker ps -a
ls -l
cd RTA_Examen_20251117/
cd Punto_C.sh
cat Punto_C.sh
docker images
docker ps
~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
cd ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates
vim datos_equipo.j2
cd ..
ls -l
~/UTN-FRA_SO_Examenes/202406/docker
cd ~/UTN-FRA_SO_Examenes/202406/docker
tree
cat dockerfile 
vim dockerfile 
docker ps
docker stop 3cf8d7307fde
docker pull jazminutn/web1-luque:latest
docker image
docker images
tree
cat dockerfile 
cat index.html 
cat run.sh 
docker ps
docker stop 4f75e07830ee
docker ps
docker pull jazminutn/web1-luque:latest
docker run -d -p 80:80 jazminutn/web1-luque:latest
docker ps
docker ps -a
curl http://192.168.56.3:80
docker images
docker pull nginx:latest
docker images
docker stop 53ebe57427ee
docker ps
docker stop 03e842cb2df9
docker pull jazminutn/web1-luque:latest
docker run -d -p 80:80 jazminutn/web1-luque:latest
docker ps
curl http://192.168.56.3:80
tree
cat dockerfile 
cat index.html 
cat run.sh 
cd ~
tree
ls -l
cd RTA_Examen_20251117/
ls -l
cat Punto_A.sh
cat Punto_B.sh
cat Punto_C.sh
cat Punto_D.sh
cd ..
ls -l
git clone https://github.com/JazminL6170/UTNFRA_SO_2do_TP_Luque.git
git clone git@github.com:JazminL6170/UTNFRA_SO_2do_TP_Luque.git
cd ~/UTN-FRA_SO_Examenes/202406
cd ~
ls -l
cp 202406 UTNFRA_SO_2do_TP_Luque 
cd ~/UTN-FRA_SO_Examenes
cp 202406 UTNFRA_SO_2do_TP_Luque
cd ..
cd UTNFRA_SO_2do_TP_Luque/
ls -l
cd ..
cd UTN-FRA_SO_Examenes/
cp 202406 UTNFRA_SO_2do_TP_Luque/
git status
git add
git add .
cd ..
ls -l
cd UTNFRA_SO_2do_TP_Luque/
ls -l
cp -r 202406 UTNFRA_SO_2do_TP_Luque/
cd ..
cd UTN-FRA_SO_Examenes/
cp -r 202406 UTNFRA_SO_2do_TP_Luque/
git status
git add .
cd ..
cd UTNFRA_SO_2do_TP_Luque/
ls -l
git commit -m "Copio carpetas dentro del repo"
git push
sudo git clone git@github.com:JazminL6170/UTNFRA_SO_2do_TP_Luque.git
sudo git clone https://github.com/JazminL6170/UTNFRA_SO_2do_TP_Luque.git
cd ..
cd UTN-FRA_SO_Examenes/
cp -r 202406 UTNFRA_SO_2do_TP_Luque/
git commit -m "Copio carpetas dentro del repo"
git add .
git commit -m "Copio carpetas dentro del repo"
git status
pwd
ls -R
cd ~/UTN-FRA_SO_Examenes
rm -rf UTNFRA_SO_2do_TP_Luque
cd ..
ls -l
rm -rf UTNFRA_SO_2do_TP_Luque
sudo rm -rf UTNFRA_SO_2do_TP_Luque
ls -l
sudo git clone git@github.com:JazminL6170/UTNFRA_SO_2do_TP_Luque.git
git add .
git commit -m "Limpio estructura del repo"
git push
git clone git@github.com:JazminL6170/UTNFRA_SO_2do_TP_Luque.git
ls -l
pwd
ls -l
git clone git@github.com:JazminL6170/UTNFRA_SO_2do_TP_Luque.git
ls -l
ssh-keygen
cd pwd
pwd
ls -la
cd .ssh
ls -la
cat id_rsa.pub
cd ~
sudo apt install git
git clone git@github.com:JazminL6170/UTNFRA_SO_2do_TP_Luque.git
ls -l
cd UTN-FRA_SO_Examenes/
ls -l
cp 202406 UTNFRA_SO_2do_TP_Luque/
cp -r 202406 UTNFRA_SO_2do_TP_Luque/
cd ..
cd UTNFRA_SO_2do_TP_Luque/
ls -la
git status
cd ~/UTNFRA_SO_2do_TP_Luque
ls -l
cd UTN-FRA_SO_Examenes/
cd ~/UTN-FRA_SO_Examenes
cp -r 202406 ~/UTNFRA_SO_2do_TP_Luque/
cd ~/UTNFRA_SO_2do_TP_Luque
ls -la
git status
git add .
git status
git commit -m "agregando carpeta 202406"
git config --global user.email "luquej6170@gmail.com"
git config --global user.name "JazminL6170"
git commit -m "agregando carpeta 202406"
git push
tree
tree -L2
tree -L 2
.
cd ..
cd RTA_Examen_20251117/
ls -l
cd ..
cp -r RTA_Examen_20251117 ~/UTNFRA_SO_2do_TP_Luque/
cd UTNFRA_SO_2do_TP_Luque/
ls -la
git status
git add .
git status
git commit -m "agregando carpeta RTA_Examen"
git push
history -a
cp $HOME/.bash_history
cp $HOME/.bash_history .
git add .bash_history
git status
git commit -m "Agrega el archivo .bash_history"
git push
tree -L 2
