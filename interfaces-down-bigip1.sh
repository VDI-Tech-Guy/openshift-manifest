LAUNCHER=$(kubectl -n f5-bigip get pods -o jsonpath='{.items[?(@.metadata.ownerReferences[].name=="bigip1")].metadata.name}')

oc -n f5-bigip exec $LAUNCHER -- /bin/sh -c 'virsh domiflist 1 2>/dev/null | grep "tap" | awk "{print \$1}" | xargs -I {} virsh domif-setlink 1 {} down'
