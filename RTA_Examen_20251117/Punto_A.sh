sudo fdisk /dev/sdc
sudo fdisk /dev/sdd
pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1 /dev/sdd2

sudo vgcreate vg_datos /dev/sdc2 /dev/sdd1
sudo vgcreate vg_temp /dev/sdd2 /dev/sdc1

sudo lvcreate -L 5MB vg_datos -n lv_docker
sudo lvcreate -L 1.5GB vg_datos -n lv_workareas
sudo lvcreate -L 512MB vg_temp -n lv_swap

sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap

sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mkdir /work/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/

sudo swapon /dev/mapper/vg_temp-lv_swap
sudo systemctl restart docker
sudo systemctl status docker
