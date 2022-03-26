FROM node:16

WORKDIR /usr/src/app
COPY package*.json ./
COPY . ./
RUN apk --no-cache add g++ make libpng-dev
RUN yarn
RUN yarn build

# Stage - Production
EXPOSE 8889
CMD ["node", "server"]