FROM quay.io/keycloak/keycloak:23.0.0

COPY jgroups-kubernetes-2.0.1.Final.jar /opt/keycloak/providers/jgroups-kubernetes-2.0.1.Final.jar

ENV JGROUPS_KUBERNETES_VERSION 2.0.1.Final

# Downlaod JGroups KubePing extension
#RUN curl -s -L -o /opt/keycloak/providers/jgroups-kubernetes-$JGROUPS_KUBERNETES_VERSION.jar https://search.maven.org/remotecontent?filepath=org/jgroups/kubernetes/jgroups-kubernetes/$JGROUPS_KUBERNETES_VERSION/jgroups-kubernetes-$JGROUPS_KUBERNETES_VERSION.jar
#ADD --chown=keycloak:keycloak https://search.maven.org/remotecontent?filepath=org/jgroups/kubernetes/jgroups-kubernetes/$JGROUPS_KUBERNETES_VERSION/jgroups-kubernetes-$JGROUPS_KUBERNETES_VERSION.jar /opt/keycloak/providers/jgroups-kubernetes-$JGROUPS_KUBERNETES_VERSION.jar

# Add custom kubeping configuration file
COPY cache-ispn-kubeping.xml /opt/keycloak/conf