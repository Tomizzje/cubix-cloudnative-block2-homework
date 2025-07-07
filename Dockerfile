FROM quay.io/drsylent/cubix/block2/homework-base:java21

LABEL cubix.homework.owner="Tamás Bakonyi"

ENV CUBIX_HOMEWORK="Tamás"
ENV APP_DEFAULT_MESSAGE=""

ARG APP_NAME
RUN mkdir /opt/app && chown 1001 -R /opt/app
USER 1001
WORKDIR /opt/app

COPY --chown=1001 /${APP_NAME}/target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]