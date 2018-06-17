# SykGenData

This project was made to be a library resource for generating data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'SykGenData'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install SykGenData

## Using the generators

Use the generators by first adding
```ruby
require 'SykGenData'
```
to your ruby file and then adding
```ruby
include 'SykGenData'
```
to your Generator Super class if you have one or to any class you'd like to generate data in otherwise.

Eg.
```ruby
class DummyClass
  include SykGenData
end

Foo = Dummy.new
Foo.form.get_username
```

## Methods
```ruby
form
```
to call the GenFormData class used to generate data for filling in online registration forms.
```ruby
form.get_country      # returns a country
form.get_first_name   # returns a first name
form.get_last_name    # returns a last name
form.get_username     # returns a dbz inspired username
form.get_email        # returns a random email
form.get_password     # returns a string with upper and lower case as well as special characters and numbers
form.get_dob          # returns a date of birth as an array of 3 values
form.get_phone_number # returns a phone number starting 07
form.get_about_me     # returns a quote for an about me section
```
--------
```ruby
postcode
```
to call GenPostcodeData class used to generate UK postcodes for use with an API.
```ruby
postcode.get_postcode   # returns a random UK postcode
```
## Testing

The generators are all tested using rspec, you can run the tests from the project root directory by running the command
```
    $ rspec
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Sykander/SykGenData. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SykGenData project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/SykGenData/blob/master/CODE_OF_CONDUCT.md).
