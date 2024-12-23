FROM nginx:1.27.0
# Устанавливаем рабочую директорию
WORKDIR /usr/share/nginx/html
# Удаляем существующие файлы
RUN rm -rf ./*
# Копируем контент в рабочую директорию
COPY content/ .
# Экспортируем порт 80
EXPOSE 80