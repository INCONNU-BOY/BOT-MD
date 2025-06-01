FROM node:lts-buster
RUN git clone https://github.com/INCONNU-BOY/BOT-MD/root/INCONNU-BOY
WORKDIR /root/INCONNU-BOY
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
