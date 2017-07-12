#Setup

- Check values in config.php. Make sure they are setup correctly for your system
- Run:
```
php composer.phar install
```

# Tests
```
php phpunit.phar tests --bootstrap vendor\autoload.php --verbose
```