FROM ubuntu



# COPY package*.json ./ 


RUN  apt-get update && apt-get install -y curl &&curl -sL https://deb.nodesource.com/setup_14.x | bash -  && apt-get install -y nodejs 

RUN apt-get install build-essential -y


# COPY . .

RUN apt-get update &&apt-get install git -y && git --version

RUN git clone https://github.com/totaljs/examples.git 

RUN ls
# RUN cd examples/remote-terminal && ls

WORKDIR /examples/remote-terminal/

RUN ls


RUN npm install




CMD ["node","index.js"]

EXPOSE 8000






