FROM arm32v7/alpine:latest

ARG KEYCLOAK_VERSION=8.0.1

RUN apk update && apk add openjdk8
RUN wget https://downloads.jboss.org/keycloak/$KEYCLOAK_VERSION/keycloak-$KEYCLOAK_VERSION.zip \
&& unzip keycloak-$KEYCLOAK_VERSION.zip \
&& rm keycloak-$KEYCLOAK_VERSION.zip

# ENTRYPOINT ["./keycloak-8.0.1/bin/standalone.sh"]
#RUN ./keycloak-8.0.1/bin/add-user-keycloak.sh -r master -u superuser -p superpassword

CMD ["./keycloak-8.0.1/bin/standalone.sh", "-b", "0.0.0.0"]
EXPOSE 8080 9900
