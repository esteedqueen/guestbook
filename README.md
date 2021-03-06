# Guestbook

Guestbook is a simple Rails application that allows you:
 - view guestbook entry listings
 - create an entry with your name and message
 - delete a guestbook entry

This documents the steps that are necessary to get the application up and running on your machine

## Prerequisites

You're going to need:

  - Linux or OS X — Windows may work, but I'm not sure as this instruction is for Linux or OS X
  - Ruby, `version 2.2.5` or newer - it's setup with version  `2.3.1`
  - Database - it's setup with `sqlite3`. To use `postgreSQL`, you will need to replace the `sqlite3` gem with `gem 'pg'` in the `Gemfile`
  - Bundler — If Ruby is already installed, but the bundle command doesn't work, just run gem install bundler in a terminal.

## Getting Set Up

  1. Clone the repository
```
$ git clone git@github.com:esteedqueen/guestbook.git
$ cd guestbook

```
  2. Run setup to install the gems configurations and setup the database.

```
$ bin/setup

```

  3. Run rails server

```
$ rails s

```

## How to run the test suite
  1 Run `rake` or `rspec` to run the full tests specs

```
$ rspec

OR

$ rake

```