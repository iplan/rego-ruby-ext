require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Hash do
  describe '#deep_merge' do
    it 'should not modify original hash' do
      h1 = {:a => 1, :b => 2}
      h2 = h1.deep_merge(:c => 3)
      h2.should_not == h1
      h2.should include(:c)
      h1.should_not include(:c)
    end

    it 'should merge non deep hash regularly' do
      h = {:a => 1, :b => 2}.deep_merge({:a => 3, :c => 4})
      h.should include(:a)
      h.should include(:c)
      h[:c].should == 4
      h[:a].should == 3
    end

    it 'should merge recursively' do
      h = {:a => 1, :b =>2, :c => {:c1 => 1, :c2 => 2}, :d => 4}.deep_merge(:b => 'bb', :c => {:c2 => 'cc'})
      h[:a].should == 1
      h[:b].should == 'bb'
      h[:c][:c1].should == 1
      h[:c][:c2].should == 'cc'
      h[:d].should == 4
    end
  end
end
