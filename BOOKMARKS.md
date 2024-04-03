# cpu hotplug
virsh setvcpus --live --config --domain vlab 2 && virsh setvcpus --live --guest --domain vlab 2


# common
/etc/init.d/networking restart

# cloudinit

cloud-init schema --system
cloud-init clean # --reboot
cat /var/log/cloud-init.log
cat /var/log/cloud-init.log | grep "Running module"

# GA

```bash
virsh qemu-agent-command --domain vlab '{"execute":"guest-ping"}'
virsh qemu-agent-command --domain vlab '{"execute":"guest-get-time"}' --pretty | jq .return | date -d -
virsh qemu-agent-command --domain vlab '{"execute":"guest-info"}'
```

# DE

```bash
apt install cinnamon-desktop-environment --no-install-recommends

sudo apt install xfce4 xfce4-goodies
sudo apt-get -y install prboom-plus

```
