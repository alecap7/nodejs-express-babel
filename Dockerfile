FROM node:10-alpine
ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY dist dist
EXPOSE 3000
CMD ["npm", "run", "start"]
