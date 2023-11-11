FROM node:18

WORKDIR /usr/src/executor
COPY runner /bin/runner
RUN chmod +x /bin/runner
COPY dist /usr/src/executor/dist
COPY node_modules /usr/src/executor/node_modules
COPY LICENSE /usr/src/executor/LICENSE

CMD [ "/bin/runner" ]
