# mark_as_deleted [![Build Status](https://secure.travis-ci.org/7even/mark_as_deleted.png)](http://travis-ci.org/7even/mark_as_deleted)

`mark_as_deleted` is a small gem which simplifies adding 'marked as deleted' functionality to your models.

## Installation

``` bash
gem install mark_as_deleted
```

in your console, or

``` ruby
gem 'mark_as_deleted'
```

in your `Gemfile`.

## Usage

Simply add a `deleted` boolean column to your model table and call `mark_as_deleted` in that model definition, and you are ready to go.

``` ruby
class Post < ActiveRecord::Base
  mark_as_deleted
end
```

Now the `Post#destroy` method won't erase the record from the database, it will update the `deleted` column to true instead.

If you want to give the column another name, you should just pass that name to the `mark_as_deleted` call, like so:

``` ruby
class Post < ActiveRecord::Base
  mark_as_deleted :is_deleted
end
```

Of course you must have a column by that name in your table.

## Roadmap

1. `ActiveRecord` scopes based on deleted column
2. Maybe a generator creating a migration and adding `mark_as_deleted` to the model
3. Maybe other ORMs support

## Contributing

Fork the repository, push your changes to a topic branch and send me a pull request.
