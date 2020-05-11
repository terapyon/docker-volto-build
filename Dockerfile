FROM node:12.16-stretch-slim
LABEL  maintainer "Manabu TERADA <terada@cmscom.jp>"

RUN apt-get update -y
RUN apt-get install -y yarn
RUN mkdir /work 
WORKDIR /work
ADD package.json /work
RUN yarn install
# RUN yarn build


# CMD ["yarn", "start"]
CMD ["/bin/bash"]