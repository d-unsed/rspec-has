require 'rspec/has/version'
require 'rspec/core'

module RSpec
  module Has
    # Wraps the `subject` in `expect` with block to make it the target
    # of an expectation.
    # Designed to easily use expectations with blocks for one-liners.
    #
    # @example

    #   describe UserFactory do
    #     subject { UserFactory.create_user }
    #
    #     it { has.to change(User.count).by(1) }
    #     it { has.to output.to_stdout }
    #
    #     context 'with database issues' do
    #       it { has.to output.to_stderr }
    #       it { has.to raise_error }
    #     end
    #   end
    #
    # @see #subject
    # @see #should
    # @see #is_expected
    #
    # @note This only works if you are using rspec-expectations.
    def has
      expect { subject }
    end
  end
end

RSpec.configure do |config|
  config.include(RSpec::Has)
end

RSpec::Core::MemoizedHelpers.send(:include, RSpec::Has)
