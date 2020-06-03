#!/bin/bash
dockerize -template /etc/nginx/conf.d/default.conf:/etc/nginx/conf.d/default.conf
dockerize -wait tcp://${PHP_HOST}:${PHP_PORT}
nginx -g "daemon off;"