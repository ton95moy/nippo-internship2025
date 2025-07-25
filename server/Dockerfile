FROM node:latest
ENV NODE_ENV=development
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN npm install -g corepack
RUN corepack enable

WORKDIR /server

COPY package.json package-lock.json .
