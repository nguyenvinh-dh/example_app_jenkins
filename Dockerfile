FROM node:lates
WORKDIR /apps
COPY . /apps
RUN rmp install && npm run build
EXPOSE 3000
CMD ["node", "index.js"]