# references
# https://github.com/jch254/docker-node-serverless
FROM node:12-alpine
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

RUN apk add --no-cache \
  python \
  py-pip \
  py-setuptools \
  ca-certificates \
  groff \
  less \
  bash && \
  pip install --no-cache-dir --upgrade pip awscli

ENV NODE_ENV development

RUN npm install -g npm@latest \
  && npm install -g serverless@2.8.0

# set aws key 
RUN sls config credentials --provider aws --key $AWS_ACCESS_KEY_ID --secret $AWS_SECRET_ACCESS_KEY

