require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe NilClass do
  it "should be empty or blank" do
    nil.should be_empty
    nil.should be_blank
  end

  it 'should not include or any' do
    nil.should_not include(23)
    nil.should_not be_any
  end

  it 'should raise error on to_sym method' do
    lambda{ nil.to_sym }.should raise_error
  end
end
