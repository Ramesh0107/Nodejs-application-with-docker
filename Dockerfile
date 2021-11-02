FROM alpine:latest
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY . /app
RUN npm install
RUN echo "hello world"
EXPOSE 9008
ENTRYPOINT ["node"]
CMD ["server.js"]
