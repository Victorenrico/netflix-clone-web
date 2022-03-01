FROM node:17.6.0-alpine3.15

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/
COPY yarn.lock /app/

RUN yarn install
RUN yarn global add react-scripts@5.0.0

EXPOSE 3000

CMD yarn start