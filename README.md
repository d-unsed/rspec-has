# Rspec::WillBeExpected

[![Dependency Status](https://gemnasium.com/d-unseductable/rspec-will_be_expected.svg)](https://gemnasium.com/d-unseductable/rspec-will_be_expected)
[![Gem Version](https://badge.fury.io/rb/rspec-will_be_expected.svg)](http://badge.fury.io/rb/rspec-will_be_expected)
[![Build Status](https://travis-ci.org/d-unseductable/rspec-will_be_expected.svg?branch=master)](https://travis-ci.org/d-unseductable/rspec-will_be_expected)

Designed to prettify one-liners when you have block expectations for subject.

Creates an alias `RSpec::Core::MemoizedHelpers.will_be_expected` to
`expect { subject }`

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
it { will_be_expected.to output('Printer is ready').to_stdout }
```

instead of

```ruby
specify { expect { subject }.to output('Printer is ready').to_stdout }
```

For more complicated cases:

```ruby
describe UserFactory do
  subject { UserFactory.create_user }

  it { will_be_expected.to change(User.count).by(1) }
  it { will_be_expected.to output.to_stdout }

  context 'with database issues' do
    it { will_be_expected.to output.to_stderr }
    it { will_be_expected.to raise_error }
  end
end
```

This change allows to DRY up, prettify and make specs even more readable.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-will_be_expected'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-will_be_expected

## Contributing

1. Fork it ( https://github.com/d-unseductable/rspec-will_be_expected/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
