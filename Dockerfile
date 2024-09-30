# Bước 1: Sử dụng image Node.js chính thức làm base image
FROM node:16

# Bước 2: Đặt thư mục làm việc
WORKDIR /app

# Bước 3: Sao chép file package.json và yarn.lock vào thư mục làm việc
COPY package.json yarn.lock ./

# Bước 4: Cài đặt các phụ thuộc bằng Yarn
RUN yarn install

# Bước 5: Sao chép toàn bộ mã nguồn vào container
COPY . .

# Bước 6: Biên dịch ứng dụng React
RUN yarn build

# Bước 7: Chạy ứng dụng (thay đổi nếu bạn sử dụng một server khác)
CMD ["yarn", "start"]

# Nếu bạn muốn expose port (thay đổi nếu cần)
EXPOSE 3000
