require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Date do
  it "should return false on empty? method call" do
    Date.new.should_not be_empty
  end
end
