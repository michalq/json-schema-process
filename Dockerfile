FROM node:16.18.0-alpine

COPY "package.json" "package-lock.json" ./
RUN npm ci

COPY "dereference.js" ./
ENTRYPOINT ["node", "dereference.js"]
CMD ["--file", "jsonschema.json"]