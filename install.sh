apt install -y gpg

sudo mkdir --parents --mode=0755 /etc/apt/keyrings

wget https://repo.radeon.com/rocm/rocm.gpg.key -O - | gpg --dearmor | sudo tee /etc/apt/keyrings/rocm.gpg > /dev/null

echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/rocm.gpg] https://repo.radeon.com/rocm/apt/5.7.3 focal main" | sudo tee --append /etc/apt/sources.list.d/rocm.list

apt update

apt install rocm-dev

echo "deb http://archive.ubuntu.com/ubuntu jammy main" >> /etc/apt/sources.list

apt update

DEBIAN_FRONTEND=noninteractive apt install libc6 -y
