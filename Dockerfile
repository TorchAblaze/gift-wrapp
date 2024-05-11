FROM ruby:3.1.2

WORKDIR /app
COPY . /app

RUN RAILS_ENV=production bundle install
RUN RAILS_ENV=production rake assets:precompile

# Adds the entrypoint.sh script so it can be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

EXPOSE 3000

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true

ENTRYPOINT ["entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]