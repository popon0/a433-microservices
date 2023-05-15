# Menggunakan Node.js versi 14 sebagai base image
FROM node:14

# Setel working directory untuk container
WORKDIR /app

# Salin seluruh source code ke working directory di dalam container
COPY . /app

# Atur ke mode production
ENV NODE_ENV=production DB_HOST=item-db

# Instal dependencies untuk aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080 yang akan digunakan oleh aplikasi
EXPOSE 8080

# Jalankan server saat container diluncurkan
CMD ["npm", "start"]

