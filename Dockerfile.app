# pull official base image
FROM node:13.12.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY client/package.json ./
COPY client/yarn.lock ./
RUN yarn install --silent

# add app
COPY client/ ./

# start app
CMD ["yarn", "start"]
