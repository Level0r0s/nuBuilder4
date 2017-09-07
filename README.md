# Setup

- Check values in nuconfig.php. Make sure they are setup correctly for your system
- Run:
```
php composer.phar install
vendor/bin/phinx init (on windows: vendor\bin\phinx init)
```

# Tests
```
php phpunit.phar tests --bootstrap vendor\autoload.php --verbose
```