#!/bin/bash
dockerize -wait tcp://db:3306
php-fpm