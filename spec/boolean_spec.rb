require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Boolean do

  it "true is a Boolean" do
    true.should be_a(Boolean)
  end

  it "false is a Boolean" do
    false.should be_a(Boolean)
  end

  it 'numbers and other stuff are not Boolean' do
    [nil, 3, 3.445, 'true', 'false', {:true => 3}].each do |o|
      o.should_not be_a(Boolean)
    end
  end
end
