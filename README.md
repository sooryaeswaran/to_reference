# ToReference

[![Build Status](https://api.travis-ci.org/sooryaeswaran/to_reference.png?branch=master)](http://travis-ci.org/sooryaeswaran/to_reference)
[![Code Climate](https://codeclimate.com/github/sooryaeswaran/to_reference.png)](https://codeclimate.com/github/sooryaeswaran/to_reference)

A simple solution to convert any ruby method to a reference. Just like in Javascript, you can pass around and call these references at a later time."

## Installation

Add the to_reference gem to your Gemfile:

    gem "to_reference"

Update your bundle and run the install generator:

    $ bundle install

## Usage

### Converts both instance and class methods to a reference.

```ruby
require 'to_reference'

Class Foo
include ToReference

def hi
	"hi"
end

def self.bar(params)
	"gr" + params
end

reference :hi, :bar
```

### Now you can do

```ruby
ref1 = Foo.new.hi
ref2 = Foo.bar

ref1.call => # "hi"
ref2.call("eat!") => # "great!"
```

Will also work with methods that are inherited, included, extended etc.
Want more examples ? Check out [examples](http://github.com/sooryaeswaran/to_reference/tree/master/lib/test/mock_classes)

## Bugs and Feedback

If you discover any bugs or want to drop a line, feel free to create an issue on GitHub.

http://github.com/sooryaeswaran/to_reference/issues 

 
