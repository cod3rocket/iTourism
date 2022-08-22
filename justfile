DOCKERCOMPOSE_FILE := "docker-compose.dev.yml"

bootstrap:
  @pnpm turbo run bootstrap

build:
  @pnpm turbo run build

clean:
  @pnpm turbo run clean

start:
	@docker-compose -f {{DOCKERCOMPOSE_FILE}} up -d

stop:
  @docker-compose -f {{DOCKERCOMPOSE_FILE}} stop

down:
  @docker-compose -f {{DOCKERCOMPOSE_FILE}} down
  @pnpm clean
