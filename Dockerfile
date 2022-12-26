# Use NodeJS v16.9.0
FROM node:16.9.0

# clone source codes on to /usr/DiscordBot
# update container machine
# minimum install vim editor
# remove apt cached data(reduce image size)
RUN git clone https://github.com/ringodaisuki/DiscordBot.git -b bot-setup /usr/DiscordBot \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
    vim \
 && apt-get -y clean \
 && rm -rf /var/lib/apt/lists/*

# Change directory to /usr/DiscordBot
WORKDIR /usr/DiscordBot

# install node modules from project package.json
RUN yarn install