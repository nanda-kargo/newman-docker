FROM node:14-slim

RUN apt update && apt install -y \
vim \
git \
awscli \
wget \
curl

ENV NODE_PATH /usr/local/lib/node_modules

RUN npm install -g newman && \
npm install -g newman-reporter-junitxray && \
npm install -g newman-reporter-reportportal

ENTRYPOINT ["newman"]
CMD ["--help"]
