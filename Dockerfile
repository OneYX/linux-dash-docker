FROM node:10.24.1-alpine

RUN git clone --depth 1 https://github.com/OneYX/linux-dash-zh.git \
    && cd linux-dash/app/server \
    && npm install --production \
    && npm cache clean --force

WORKDIR /linux-dash/app/server

CMD ["node", "index.js"]