FROM node:8-alpine AS ts-sample-builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run clean
RUN npm run build

FROM node:8-alpine AS ts-sample-prod
WORKDIR /app
COPY --from=ts-sample-builder ./app/dist ./dist
COPY package* ./
RUN npm install --production
CMD npm start


