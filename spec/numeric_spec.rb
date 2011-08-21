require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Numeric do
  it "should return false on empty? method call" do
    5.should_not be_empty
  end
end
