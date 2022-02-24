FROM eclipse-temurin:8-jre-focal

RUN apt-get update && apt-get --yes upgrade && \
    apt-get install -y python3 python3-pip curl && \
    rm -rf /var/lib/apt/lists/*

COPY ./build/output/kafka-gitops /usr/local/bin/kafka-gitops
