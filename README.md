# laravel-shop

## Initialization

- .gitignore

```
/.idea
/node_modules
/public/css
/public/font
/public/hot
/public/js
/public/mix-manifest.json
/public/packages
/public/storage
/public/uploads
/storage/administrator_settings
/storage/debugbar
/storage/*.key
/vendor

.env
.env.bak
.env.old
.env.save
.phpunit.result.cache
Homestead.json
Homestead.yaml
npm-debug.log
yarn-error.log

```

- composer

```
$ composer config -g repo.packagist composer https://packagist.laravel-china.org

$ composer create-project laravel/laravel laravel-shop --prefer-dist "5.8.*"
```

- yarn

```
$ yarn [install] --no-bin-links

$ yarn [install] --no-bin-links --no-lockfile
```

- npm

```
$ npm run watch-poll &

$ npm run dev | development

$ npm run prod | production
```
