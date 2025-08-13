REGISTRY=default-route-openshift-image-registry.apps.ocp-hml.ati.to.gov.br

podman build -f src/main/docker/Dockerfile.jvm -t $REGISTRY/tassinari/quarkus-rest-test-jvm

podman login -u admin  -p $(oc whoami -t) $REGISTRY --tls-verify=false

podman push $REGISTRY/tassinari/quarkus-rest-test-jvm --tls-verify=false

oc get is -n tassinari


