require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Symbol do
  it "should return false on empty? method call" do
    Symbol.now.should_not be_empty
  end
end
