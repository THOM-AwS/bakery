# Packer Image creation.
## three musketeers
 
Create your Image:

docker run \ 
  --rm \
  --privileged \
  --security-opt seccomp:unconfined \
  --network=host \
  --dns 8.8.8.8 \
  -v /dev:/dev \
  -v ${PWD}:/build:ro \
  -v ${PWD}/packer_cache:/build/packer_cache \
  -v ~/.ssh/:/.ssh/ \
  -v ${PWD}/output-arm-image:/build/output-arm-image \
  ghcr.io/solo-io/packer-plugin-arm-image build -var wifi_name= -var wifi_password= -var ssh_key_src='/.ssh/id_ed25519.pub' -var image_home_dir='/home/ubuntu' -var password='car battery start' ubuntu-pi/ubuntu-pi.json






this will work later:

```
SUBFOLDER=$(directory) make init || make build
```
from the build directory.
