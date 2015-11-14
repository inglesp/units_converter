# UnitsConverter

A toy library for converting quantities between different units.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'units_converter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install units_converter

## Usage

```ruby
> UnitsConverter.convert(12, :miles).to(:metres).to_f
 => 19312.128 
```
