# SykGenData

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/SykGenData`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'SykGenData'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install SykGenData

# Generators

This project was made to be a library resource for generating data.

## Using the generators

1. Clone down the repo and merge this lib folder with your own

2. Add the following gems to your gemfile
```
gem 'yaml'
gem 'json'
gem 'faker'
gem 'httparty'
gem 'rspec'
```
or install them individually.

3. Use the generators by requiring the generator_super ruby and and including the GeneratorSuper module into your class

4. Inside your class use
```
form
```
to call the GenFormData class used to generate data for filling in online registration forms.
```
form.get_first_name   # returns a first name
form.get_last_name    # returns a last name
form.get_username     # returns a dbz inspired username
form.get_password     # returns a string with upper and lower case as well as special characters and numbers
form.get_dob          # returns a date of birth as an array of 3 values
form.get_phone_number # returns a phone number starting 07
```
--------
```
city
```
to call GenCityData class used to generate city ids, names and coordinates for use with an API.
```
city.get_random_city_id           # returns a random city id
id = city.get_random_city_id
city.get_city_name_by_id id       # returns a city name by that city's id
city.get_city_names               # returns an array of city names
city.get_random_city_name         # returns a random city name
name = city.get_random_city_name
city.get_city_id_by_name name     # returns a city id by that city's name
city.get_city_coord_by_id id      # returns an array of longitude and latitude for a city by that city's id
```
--------
```
postcode
```
to call GenPostcodeData class used to generate UK postcodes for use with an API.
```
postcode.get_postcode   # returns a random UK postcode
```
## Testing

The generators are all tested using rspec, you can run the tests for yourself by going to
```
lib/SykGenData/generators
```
from the project root directory and running the command
```
rspec
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
