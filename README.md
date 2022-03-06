# README

1. bundle && yarn

2. Setup db(https://www.codementor.io/@engineerapart/getting-started-with-postgresql-on-mac-osx-are8jcopb)
2.1. CREATE ROLE orvalhoevents WITH LOGIN PASSWORD 'orvalhoevents';
2.2. ALTER ROLE orvalhoevents CREATEDB;
2.3. CREATE DATABASE orvalhoevents_development;
2.4. GRANT ALL PRIVILEGES ON DATABASE orvalhoevents_development TO orvalhoevents;
2.5. bundle exec rails db:migrate
2.6. bundle exec rails db:seed

3. bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
foreman start
