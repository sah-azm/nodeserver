FROM node:16-slim
RUN git clone https://github.com/sah-azm/nodeserver.git
WORKDIR /usr/node/app
COPY ./package.json  ./
RUN npm install
ADD ./index.js/ ./   
EXPOSE 3070
CMD [ "node","index.js" ]
