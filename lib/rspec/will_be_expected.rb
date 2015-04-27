require 'rspec/will_be_expected/version'
require 'rspec/core'

module RSpec
  module WillBeExpected
    # Wraps the `subject` in `expect` with block to make it the target
    # of an expectation.
    # Designed to easily use expectations with blocks for one-liners.
    #
    # @example

    #   describe UserFactory do
    #     subject { UserFactory.create_user }
    #
    #     it { will_be_expected.to change(User.count).by(1) }
    #     it { will_be_expected.to output.to_stdout }
    #
    #     context 'with database issues' do
    #       it { will_be_expected.to output.to_stderr }
    #       it { will_be_expected.to raise_error }
    #     end
    #   end
    #
    # @see #subject
    # @see #should
    # @see #is_expected
    #
    # @note This only works if you are using rspec-expectations.
    def will_be_expected
      expect { subject }
    end
  end
end

RSpec.configure do |config|
  config.include(RSpec::WillBeExpected)
end

RSpec::Core::MemoizedHelpers.send(:include, RSpec::WillBeExpected)
