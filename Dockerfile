FROM node:23-slim
ENV NODE_PATH=/usr/local/lib/node_modules NODE_ENV=production
ENTRYPOINT ["/usr/local/bin/node"]
CMD ["/opt/app/server.js"]
COPY image /
RUN /build.sh
WORKDIR /opt/app
