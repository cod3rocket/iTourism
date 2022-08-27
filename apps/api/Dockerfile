FROM node:lts-alpine

WORKDIR /home/node/itourism/

COPY package.json pnpm-lock.yaml pnpm-workspace.yaml tsconfig.json \
      turbo.json justfile .npmrc ./

COPY apps/api ./apps/api

COPY packages/nestjs ./packages/nestjs

COPY packages/tsconfig ./packages/tsconfig


# Install just
RUN  apk add --no-cache git wget tar \
      && wget https://github.com/casey/just/releases/download/1.4.0/just-1.4.0-x86_64-unknown-linux-musl.tar.gz \
      && tar -xzf just-1.4.0-x86_64-unknown-linux-musl.tar.gz \
      && rm just-1.4.0-x86_64-unknown-linux-musl.tar.gz \
      && chmod +x just \
      && mv just /usr/local/bin

RUN npm install -g pnpm \
    && pnpm install \
    && pnpm build:api

WORKDIR /home/node/itourism/apps/api

CMD ["pnpm", "start:prod"]
