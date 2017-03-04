# https://hub.docker.com/_/elixir/
FROM elixir:1.4.2

# Install Phoenix and dependencies
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new-1.2.1.ez

# Install NodeJS 7.x and NPM
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y -q nodejs

# Create
RUN mkdir /app
ADD . /app
WORKDIR /app
