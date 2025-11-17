# Getting the base image
FROM node:18

# Setting the working directory for keelping all files in one place
WORKDIR /app

# Copying everything from current directory to working directory in the container

COPY . .

# Installing all the dependencies

RUN npm install

# Exppose the port on which the app will run

EXPOSE 5173

# Serve the application

CMD ["npm", "run", "dev"] 