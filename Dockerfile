FROM node:16.13.0
LABEL version="1.0"
LABEL description="Flexcodelabs"
LABEL maintainer = ["bmsteve@yahoo.com"]
RUN mkdir /srv/example
WORKDIR /srv/example
COPY package.json package-lock.json ./
RUN npm run build
COPY . .