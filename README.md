# DynamicUniquenessValidator
[![Build Status](https://travis-ci.org/Platinet/dynamic_uniqueness_validator.svg?branch=master)](https://travis-ci.org/Platinet/dynamic_uniqueness_validator)
[![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/Platinet/dynamic_uniqueness_validator)

Adds the ability to validate two fields at the same time. For an intermediate table with many-to-many association

## Installation

Add to your Gemfile:

```ruby
gem 'dynamic_uniqueness_validator'
```

And then execute:

    $ bundle install

## Usage

Add inverse_of to model with has_many. Then add the following to your model:

    $ validates :my_model_item, dynamic_uniqueness: { parent_association: :parent_model, child_association: :model_item }

You can also use the message option

    $ validates :my_model_item, dynamic_uniqueness: { parent_association: :parent_model, child_association: :model_item, message: "Custom error message" }

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
