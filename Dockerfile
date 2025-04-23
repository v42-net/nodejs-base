FROM node:23-slim
ENV NODE_PATH=/usr/local/lib/node_modules NODE_ENV=production
ENTRYPOINT ["/usr/local/bin/node"]
CMD []
COPY image /
RUN /build.sh

