DOCKERCOMPOSE_FILE := "docker-compose.dev.yml"

bootstrap:
  @pnpm turbo run bootstrap
  @melos bootstrap

build:
  @pnpm turbo run build

build-api:
  @pnpm turbo run build --filter=...@itourism/api

clean:
  @pnpm turbo run clean

start:
	@docker-compose -f {{DOCKERCOMPOSE_FILE}} up -d

stop:
  @docker-compose -f {{DOCKERCOMPOSE_FILE}} stop

down:
  @docker-compose -f {{DOCKERCOMPOSE_FILE}} down
  @pnpm clean
