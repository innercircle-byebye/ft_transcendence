### Docker compose commands

## for development environment
alias dev="docker compose -f docker-compose.yml -f docker-compose.dev.yml"
alias dev-up="docker compose -f docker-compose.yml -f docker-compose.dev.yml up --build"
alias dev-up-build="docker compose -f docker-compose.yml -f docker-compose.dev.yml up --build"
alias dev-down="docker compose -f docker-compose.yml -f docker-compose.dev.yml down"

## for production environment
alias prod="docker compose -f docker-compose.yml -f docker-compose.prod.yml"
alias prod-up="docker compose -f docker-compose.yml -f docker-compose.prod.yml up"
alias prod-up-build="docker compose -f docker-compose.yml -f docker-compose.prod.yml up --build"
alias prod-down="docker compose -f docker-compose.yml -f docker-compose.prod.yml down"

### docker-compose execute container
## front
alias front-dev="docker compose -f docker-compose.yml -f docker-compose.dev.yml exec front"

## back
alias back-dev="docker compose -f docker-compose.yml -f docker-compose.dev.yml exec front"

## backend dev typeorm
alias back-dev-typeorm='docker compose -f docker-compose.yml -f docker-compose.dev.yml exec back npm run typeorm'
alias back-dev-seed='docker compose -f docker-compose.yml -f docker-compose.dev.yml exec back npm run seed'
alias back-dev-seed-config='docker compose -f docker-compose.yml -f docker-compose.dev.yml exec back npm run seed:config'
alias back-dev-seed-run='docker compose -f docker-compose.yml -f docker-compose.dev.yml exec back npm run seed:run'


## docker related commands
alias docker-rm-all-images='docker rmi $(docker images -a -q)'
alias docker-rm-all-containers='docker rm $(docker ps -a -q)'
alias docker-rm-all-volumes='docker volume rm $(docker volume ls -q --filter dangling=true)'
alias docker-rm-all='docker stop $(docker ps -a -q) ; docker-rm-all-containers; docker-rm-all-images; docker-rm-all-volumes'
