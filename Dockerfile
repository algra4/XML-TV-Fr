FROM composer:lts as composer
#Copy all file to the xmltv directort
COPY . /app/xmltv

WORKDIR /app/xmltv

RUN composer install

FROM php:8.2-cli as main
COPY --from=composer /app/xmltv /app/xmltv
WORKDIR /app/xmltv

CMD [ "php", "example/script_all.php" ]
