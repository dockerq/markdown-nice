FROM node:lts-alpine3.14
# FROM node:lts-alpine3.14 AS builder

# RUN mkdir -p /app/mdnice && \
#     git clone https://github.com/dockerq/markdown-nice .

WORKDIR /app/mdnice
ADD . /app/mdnice/

RUN npm install && \
    npm run build

RUN rm -rf node_modules

# FROM node:lts-alpine3.14

# WORKDIR /app/mdnice
# COPY --from=builder /app/mdnice/build /app/mdnice

# RUN yarn global add serve
# CMD ["serve -s build"]
