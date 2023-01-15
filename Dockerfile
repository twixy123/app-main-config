FROM node
# image from wich we will create own image

WORKDIR /app
# alias that tell docker our work folder

COPY package*.json .
# COPY yarn.lock.json .
# will copy our package and yarn files to /app. Docker smart,
# and it will take node_modules from cache and will not to install if we didn't change our npm packeges
# "." it "/app" cause we created alias

RUN npm install
# command for run

COPY . .
# will copy from directory where stand dockerfile and put it to /app.

ENV PORT 3000
# will create env variable

EXPOSE ${PORT}
# tell docker what port will be use our app

CMD ["node", "app.js"]
# also command, but difference between cmd and run - cmd comand need to start our app,
# when run command need to set something when docker build is runnning
