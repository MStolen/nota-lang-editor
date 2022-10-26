FROM node:18-alpine
WORKDIR /home/node/app/

# Move global storage to userspace and add to path
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=${PATH}:${NPM_CONFIG_PREFIX}/bin

# Install nota-lang as a global package (per the instructions on the website)
RUN ["npm", "install", "--global", "@nota-lang/nota"]

EXPOSE 8000

ENTRYPOINT [ "nota", "edit", "index.nota" ]