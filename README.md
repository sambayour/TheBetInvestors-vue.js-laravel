# The Bet Inestors

A full blown SPA built with Vue.js and Laravel 


## Getting Started
* Clone or download this repo
* Run composer install
* Edit .env to you database credentials
* Run migration (N:b This should only be crried out once n the live server to avoid loss of data)
* Run seed
* Run compile for JS
* Serve the application


```

### Prerequisites

Install the following 


```
Composer
 Node

```


### Installing

```
# Install Dependencies
composer install

# Run Migrations
php artisan migrate

# Import seed
php artisan db:seed

# If you get an error about an encryption key
php artisan key:generate

# Passport
php artisan passport:install

# Clear cache
php artisan cache:clear

# Clear config
php artisan config:cache

# Install JS Dependencies
npm install 

# Watch Files
npm run watch -- in development
npm run prod -- in production

```

## Built With

* [Laravel](https://laravel.com/) - The web framework used
* [VueJs](https://vuejs.org/) - Used for front end functionality
* [Bootstrap](https://getbootstrap.com/) - Used for the UI



## Versioning

We use [SemVer](http://semver.org/) for versioning. Current version is 1.0.0

## Author

* **Samuel Olubayo** - *Initial work* - 
[Website](https://samuelolubayo.website), 
[Linkedin](https://www.linkedin.com/in/samuel-olubayo-057bb2116/)
[Email for support, gigs, or jobs](mailto:hello@samuelolubayo.website)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details


