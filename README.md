# cpu hotplug
virsh setvcpus --live --config --domain vlab 2
virsh setvcpus --live --guest --domain vlab 2
