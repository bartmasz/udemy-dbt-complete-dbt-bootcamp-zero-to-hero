#!/bin/sh
docker compose down

if ! [ -f input_data/raw_hosts.csv ]; then
  curl https://dbtlearn.s3.amazonaws.com/hosts.csv -o input_data/raw_hosts.csv
fi
if ! [ -f input_data/raw_reviews.csv ]; then
  curl https://dbtlearn.s3.amazonaws.com/reviews.csv -o input_data/raw_reviews.csv
fi
if ! [ -f input_data/raw_listings.csv ]; then
  curl https://dbtlearn.s3.amazonaws.com/listings.csv -o input_data/raw_listings.csv
fi

docker compose up -d

sleep 5
docker exec -ti dbtlearn-postgres-1 psql -U dbt_user -d dbt_airbnb_db -a -f /input_data/setup_airbnb_db_in_postgres.sql