FROM node:13

WORKDIR /usr/src/app
COPY package*.json ./
COPY . ./
RUN yarn config set network-timeout 300000
RUN yarn
RUN yarn build

# Stage - Production
EXPOSE 8889
CMD ["node", "server"]