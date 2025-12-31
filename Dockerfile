FROM node:latest
WORKDIR /app
copy package.* .
RUN npm install
ENV PORT 3000
ENV MONGO_URL "mongodb://10.108.208.199:27017/project-01"
COPY . .
CMD ["npm", "start"]