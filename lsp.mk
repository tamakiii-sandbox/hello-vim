.PHONY: help setup dependencies php clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	dependencies

dependencies:
	@type php > /dev/null
	@type yes > /dev/null

php: \
	composer.phar \
	composer.json \
	vendor/felixfbecker/language-server

/usr/local/lib/node_modules/intelephense:
	npm install -g intelephense

~/.composer/vendor/jetbrains/phpstorm-stubs:
	php composer.phar global require jetbrains/phpstorm-stubs:dev-master

vendor/felixfbecker/language-server:
	php composer.phar require felixfbecker/language-server 2>&1 || true
	php composer.phar update
	php composer.phar run-script --working-dir=vendor/felixfbecker/language-server parse-stubs

composer.json: composer.phar
	yes | php composer.phar init

composer.phar: composer-setup.php
	php composer-setup.php --install-dir=. --filename=$@

composer-setup.php:
	php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
	php -r "if (hash_file('sha384', 'composer-setup.php') === 'c31c1e292ad7be5f49291169c0ac8f683499edddcfd4e42232982d0fd193004208a58ff6f353fde0012d35fdd72bc394') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

clean:
	rm composer-setup.php
	rm composer-setup.phar
