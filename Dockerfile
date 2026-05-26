# Sử dụng base image là Node.js phiên bản 18
FROM node:18-slim

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép file định nghĩa các gói phụ thuộc
COPY package*.json ./

# Cài đặt các phụ thuộc (dependencies)
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Thông báo port mà ứng dụng sẽ lắng nghe (3001 theo app.js)
EXPOSE 3001

# Lệnh để chạy ứng dụng
CMD ["node", "app.js"]
