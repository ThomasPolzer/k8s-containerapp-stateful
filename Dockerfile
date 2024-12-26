FROM node:18.9.0-alpine

#RUN adduser -D dev
USER node

ENV SERVERNAME host.minikube.internal

WORKDIR /home/node

# das ADD-Komando läuft standardmäßig unter root und muss nun auf node gemapped werden
ADD --chown=node:node . /home/node 
RUN cd /home/node && \
    npm install

CMD ["node", "app.js"]