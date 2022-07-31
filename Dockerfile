FROM node:16.13.0
LABEL version="1.0"
LABEL description="project-name"
LABEL maintainer = ["bmsteve@yahoo.com", "neicoreadams@gmail.com"]
RUN mkdir /srv/example
WORKDIR /srv/example
COPY package.json package-lock.json ./
RUN npm run build
COPY . .