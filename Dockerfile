FROM node:14

# Direktori
WORKDIR /app

# Salin package.json dan package-lock.json
COPY package*.json ./

# Install dependensi
RUN npm install

# Salin seluruh kode sumber
COPY . .

# Setel nomor port
ENV PORT=3001

# Setel URL AMQP untuk RabbitMQ
ENV AMQP_URL=amqp://reg:reg@10.108.186.167:5672

# Expose port
EXPOSE 3001

# Jalankan service
CMD [ "npm", "start" ]

