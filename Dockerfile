FROM node:13

WORKDIR /usr/src/app
COPY package*.json ./
COPY . ./
RUN npm install --timeout=300000
RUN npm run build

# Stage - Production
EXPOSE 8889
CMD ["node", "server"]