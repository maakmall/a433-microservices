# 1. Pakai base image Node.js versi 14
FROM node:14

# 2. Set working directory di dalam container ke /app
WORKDIR /app

# 3. Copy semua source code dari local ke /app di dalam container
COPY . . 

# 4. Set environment jadi production, dan set host database-nya ke container item-db
ENV NODE_ENV=production \
    DB_HOST=item-db

# 5. Install dependencies untuk production dan build app-nya
RUN npm install --production --unsafe-perm && npm run build

# 6. Buka port 8080
EXPOSE 8080

# 7. Jalankan aplikasi pakai npm start saat container di-run
CMD ["npm", "start"]
