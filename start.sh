docker-compose build
docker-compose run --rm ms_events_places rails db:create
docker-compose run --rm ms_events_places rails db:migrate
docker-compose up
