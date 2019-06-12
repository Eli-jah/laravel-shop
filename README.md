# laravel-shop

## Initialization

- .gitignore

```
/.idea
/node_modules
/public/css
/public/font
/public/fonts
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

# for deployment
$ composer install --optimize-autoloader --no-dev
```

- artisan

```
# to set the application key
$ php artisan key:generate

# to create the symbolic link to the public disk (from "public/storage" to "storage/app/public")
$ php artisan storage:link

# to create a new model with correspondent database migration and factory
$ php artisan make:model Models/ModelNameInCamelCase -mf

# to creat a migration seeder for a new model
$ php artisan make:seeder ModelNameInPluralFormsSeeder

# to run a specific migration seeder
$ php artisan db:seed --class=ModelNameInPluralFormsSeeder

# tinker(REPL)
$ php artisan tinker
# to publish Tinker's configuration file
$ php artisan vendor:publish --provider="Laravel\Tinker\TinkerServiceProvider"

# to flush the application cache
$ php artisan cache:clear

# to remove the configuration cache file
$ php artisan config:clear

# to remove the route cache file
$ php artisan route:clear

# to clear all the compiled view files
$ php artisan view:clear

# for deployment
$ php artisan config:cache
$ php artisan route:cache
```

- yarn

```
# update yarn
$ sudo npm update yarn --global

$ yarn config set registry https://registry.npm.taobao.org

$ SASS_BINARY_SITE=http://npm.taobao.org/mirrors/node-sass yarn

# initial installation
$ yarn [install] --no-bin-links
# or:
$ yarn [install] --no-bin-links --no-lockfile

$ yarn add package-name
```

- npm

```
$ npm run watch-poll &

$ npm run dev | development

$ npm run prod | production
```

- MailHog

```
Port mapping @ homestead: 1025 - 8025

{{ env('APP_URL', 'http://laravelshop.test') . ':8025/' }}

eg. http://laravelshop.test:8025/
```

- Commands Run in the Background on the Dev Mode

```
$ npm run watch-poll &

$ php artisan queue:work &
```

