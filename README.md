# cpu hotplug
virsh setvcpus --live --config --domain vlab 2 && virsh setvcpus --live --guest --domain vlab 2


# common
/etc/init.d/networking restart

# cloudinit

cloud-init schema --system
cloud-init clean # --reboot
cat /var/log/cloud-init.log
cat /var/log/cloud-init.log | grep "Running module"
