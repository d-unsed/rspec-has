# Rspec::Has

[![Dependency Status](https://gemnasium.com/d-unseductable/rspec-will_be_expected.svg)](https://gemnasium.com/d-unseductable/rspec-will_be_expected)
[![Gem Version](https://badge.fury.io/rb/rspec-will_be_expected.svg)](http://badge.fury.io/rb/rspec-will_be_expected)
[![Build Status](https://travis-ci.org/d-unseductable/rspec-has.svg)](https://travis-ci.org/d-unseductable/rspec-has)

Designed to prettify one-liners when you have block expectations for subject.

Creates an alias `RSpec::Core::MemoizedHelpers.has` to `expect { subject }`

Simple to use:

```ruby
class SimplePrinter
  def initialize
    print 'Printer is ready'
  end
end
```

This goes to

```ruby
it { has.to output('Printer is ready').to_stdout }
```

instead of

```ruby
specify { expect { subject }.to output('Printer is ready').to_stdout }
```

For more complicated cases:

```ruby
describe UserFactory do
  subject { UserFactory.create_user }

  it { has.to change(User, :count).by(1) }
  it { has.to output.to_stdout }

  context 'with database issues' do
    it { has.to output.to_stderr }
    it { has.to raise_error }
  end
end
```

This change allows to DRY up, prettify and make specs even more readable.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-has'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-has

## Contributing

1. Fork it ( https://github.com/d-unseductable/rspec-has/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
