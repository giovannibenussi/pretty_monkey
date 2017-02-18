# pretty_monkey
Pretty Class Extensions (MonkeyPatching) for Ruby

# Installation

`gem install pretty_monkey`

And then include it in your ruby file:

`require 'pretty_monkey'`

# Usage
## String
### remove_consonants
Remove all the consonants inside a string:

```ruby
'hello world'.remove_consonants # => 'eoo'
```

### remove_vocals
There's also a `remove_vocals` method that removes all vocals inside a string:

```ruby
'hello world'.remove_vocals # => 'hll wrld'
```
