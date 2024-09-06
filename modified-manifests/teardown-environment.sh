#Build VMs
oc delete -f bigip1-datavolume.yaml -f bigip1-vm.yaml
oc delete -f bigip2-datavolume.yaml -f bigip2-vm.yaml

#Build Networking
oc delete -f bigip1-net-attach-ext.yaml -f bigip1-net-attach-int.yaml -f bigip1-net-attach-mgmt.yaml -f bigip1-net-attach-ha.yaml
oc delete -f bigip2-net-attach-ext.yaml -f bigip2-net-attach-int.yaml -f bigip2-net-attach-mgmt.yaml -f bigip2-net-attach-ha.yaml