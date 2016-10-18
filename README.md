## License

All source code is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Playful blog

A simple Rails App exercise of making my own blog. Starting as a [2-hour speed coding](https://www.youtube.com/watch?v=bUyQULKZp9E) exercise for fun, I added some functionalities and had some design help by @Antholimere to be able to make it a basic Rails Blog app for my personal use.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
