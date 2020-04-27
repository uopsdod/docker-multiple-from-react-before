FROM node
# after downloading node image, we now have node as our build environment
COPY package.json .
RUN npm install
# after npm install, we now have useful scripts in node_modules folder (ex. npm run build, npm start)
COPY . .
# after copy, we now have our front-end project code inside the container 
RUN npm run build
# after npm run build, we now have deployable artifact of our project 
ENTRYPOINT ["npm", "start"]
# after entrypoint, we use node.js server to run our front-end project when our container is up 

