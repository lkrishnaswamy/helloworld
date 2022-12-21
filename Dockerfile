#FROM launcher.gcr.io/google/nodejs
FROM node:16.17.0-bullseye-slim

ARG ORG_ID
ENV ORG_ID_ENV=$ORG_ID

#Install anypoint-cli
RUN npm install -g anypoint-cli@latest

COPY ./deploy-to-CH-NonProd-AnypointCLI.sh /

ENTRYPOINT ["/deploy-to-CH-NonProd-AnypointCLI.sh"]