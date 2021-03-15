# SecretString

A simple, pure Ruby replacement for the core `String` class to help prevent leaking sensitive information.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'secret_string'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install secret_string

## How it works

`SecretString::String` simply inherits from `String` and overrides the `#inspect` method. That's it.

## Usage

There are 3 ways to make a secret string:

1. `SecretString.new()`
2. `SecretString::String.new()`
3. `String#secret`

### Examples

```ruby
# 1 & 2
secret = SecretString.new("secret-api-key")
secret = SecretString::String.new(other_string)
# 3
secret = "secret-api-key".secret
secret = other_string.secret
```

## Configuration

Configure

## Development

Requires [Rubocop](https://github.com/rubocop/rubocop).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
