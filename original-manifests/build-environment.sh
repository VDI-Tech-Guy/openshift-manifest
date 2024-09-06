#Build Networking
oc apply -f bigip1-net-attach-ext.yaml -f bigip1-net-attach-int.yaml -f bigip1-net-attach-mgmt.yaml -f bigip1-net-attach-ha.yaml
oc apply -f bigip2-net-attach-ext.yaml -f bigip2-net-attach-int.yaml -f bigip2-net-attach-mgmt.yaml -f bigip2-net-attach-ha.yaml

#Build VMs
oc apply -f bigip1-datavolume.yaml -f bigip1-vm.yaml
oc apply -f bigip2-datavolume.yaml -f bigip2-vm.yaml