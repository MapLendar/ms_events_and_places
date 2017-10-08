docker-compose build
docker-compose run --rm ms_events_sites rails db:create
docker-compose run --rm ms_events_sites rails db:migrate
docker-compose up
