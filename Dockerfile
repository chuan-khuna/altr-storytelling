FROM node:lts-hydrogen

WORKDIR /web
COPY package.json .

RUN npm install
COPY . .
# RUN rm -rf .npmrc
EXPOSE 8000

CMD [ "yarn", "dev", "-H", "0.0.0.0", "-p", "8000"]