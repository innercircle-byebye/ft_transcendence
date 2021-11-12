
################### ft_transcendence (innercircle-byebye) ###################

## backend dev typeorm
alias back-dev-typeorm='docker-compose back npm run typeorm'
alias back-dev-seed='docker-compose exec back npm run seed'
alias back-dev-seed-config='docker-compose exec back npm run seed:config'
alias back-dev-seed-run='docker-compose exec back npm run seed:run'


## docker related commands
alias docker-rm-all-images='docker rmi $(docker images -a -q)'
alias docker-rm-all-containers='docker rm $(docker ps -a -q)'
alias docker-rm-all-volumes='docker volume rm $(docker volume ls -q --filter dangling=true)'
alias docker-rm-all='docker stop $(docker ps -a -q) ; docker-rm-all-containers; docker-rm-all-images; docker-rm-all-volumes'

