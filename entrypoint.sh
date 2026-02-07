if [ ! -f /blog/.env ]; then
    git clone https://github.com/Kellerrel/blog.git /blog && \
    composer install && \
    bun i && \
    bun run build && \
    cp .env.example .env && \
    php artisan key:generate && \
fi
php artisan serve --host=0.0.0.0