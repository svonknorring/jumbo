oc delete imagestream/jboss-eap64-jumbo --namespace openshift
docker rmi 172.30.21.125:5000/openshift/jboss-eap64-jumbo:latest
docker build --no-cache --force-rm --rm=true --tag 172.30.21.125:5000/openshift/jboss-eap64-jumbo:latest .
docker login -u uploader -e mailto:uploader@abc.com -p Tkwl5XPmLeaQM7P4b3vEQiUlmpjIG_6AsBKlhkvSW6Q 172.30.21.125:5000
docker push 172.30.21.125:5000/openshift/jboss-eap64-jumbo:latest
