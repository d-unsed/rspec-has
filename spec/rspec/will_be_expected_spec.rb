require 'spec_helper'

describe Rspec::WillBeExpected do
  let(:simple_printer) do
    Class.new do
      def initialize
        print 'Printer is ready'
      end
    end
  end

  subject { simple_printer.new }

  it { will_be_expected.to output('Printer is ready').to_stdout }
end
