require 'spec_helper'

describe Rspec::Has do
  let(:simple_printer) do
    Class.new do
      def initialize
        print 'Printer is ready'
      end
    end
  end

  subject { simple_printer.new }

  it { has.to output('Printer is ready').to_stdout }
end
