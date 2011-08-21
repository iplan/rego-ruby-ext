require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe String do
  describe "#to_params" do
    it 'should return empty params hash for non url or url with no params' do
      ''.to_params.should == {}
      'http://wiki.rego.co.il/doku.php'.to_params.should == {}
      'http://wiki.rego.co.il/doku.php?'.to_params.should == {}
    end

    it "should parse url return params hash" do
      url = 'http://wiki.rego.co.il/doku.php?id=development:horizon3:plugins:core_extensions:start&do=edit&rev='
      url.to_params.should == {:do=>"edit", :rev=>nil, :id=>"development:horizon3:plugins:core_extensions:start"}
    end
  end

  describe '#interpolate' do
    "var is %{var1}!".interpolate(:var1 => 10).should == "var is 10!"
  end

end
