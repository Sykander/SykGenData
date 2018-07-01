# SykGenData

This project was to make a ruby gem which came with a library of useful data generators.

These generators could be added to later as I find the need for different types of data. Making these generators into a gem means that I can easily include and use my generators in new projects without much hassle of copying files, making require statements etc.

The generators themselves come in a SOM model with a super module handing out appropriate generator services.

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
include SykGenData
```
to your Generator Super class if you have one or to any class you'd like to generate data in otherwise.

Eg.
```ruby
require 'SykGenData'
...
class Dummy
  include SykGenData
end
...
dummy = Dummy.new
dummy.form.get_username
```

## Methods
```ruby
form
```
to call the GenFormData class used to generate data for filling in online registration forms.
```ruby
form.get_country        # returns a country
form.get_fake_location  # returns a fictional location
form.get_first_name     # returns a first name
form.get_last_name      # returns a last name
form.get_username       # returns a username
form.get_email          # returns a random email
form.get_password       # returns a string with upper and lower case as well as special characters and numbers
form.get_dob            # returns a date of birth as an array of 3 values
form.get_visa_cc_number # returns a random fake VISA credit card number
form.get_visa_sec_code  # returns a random fake VISA security code
form.get_phone_number   # returns a phone number starting 07
form.get_about_me       # returns a quote for an about me section
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

    $ rake spec


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Sykander/SykGenData. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SykGenData project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/SykGenData/blob/master/CODE_OF_CONDUCT.md).
