require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Symbol do
  it "should return false on empty? method call" do
    :asdf.should_not be_empty
    'y'.to_sym.should_not be_empty
  end
end
