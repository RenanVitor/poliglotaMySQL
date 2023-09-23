FROM node:alpine
WORKDIR /opt/serversql/
COPY ./src /opt/serversql/src
COPY ./*.json /opt/serversql/
ENV PORT=3001
ENV JWT_SECRET=@tokenJWT
ENV SENHA=LinuxMelhorSistema
ENV URLBANCO=db.cbrqdjaeurmeftioqfaz.supabase.co
EXPOSE 3001
RUN npm i
CMD [ "npm", "start" ]
