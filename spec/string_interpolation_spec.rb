require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe StringInterpolation do
  describe "#interpolate" do
    it 'should replace %{} variables' do
      str = 'my var1=%{var1} and var2 is %{var2}.'
      StringInterpolation.interpolate(str, :var1 => 'one', :var2 => 'foo').should == 'my var1=one and var2 is foo.'
    end

    it 'should replace %<> variables' do
      str = 'my var1=%<var1>d and var2 is %<var2>s.'
      StringInterpolation.interpolate(str, :var1 => 5.2, :var2 => 'foo').should == 'my var1=5 and var2 is foo.'
    end

    it 'should raise error if variable value not found and strategy is :raise' do
      str = 'my var1=%<var1>d and var2 is %<var2>s'
      lambda{ StringInterpolation.interpolate(str, {:var1 => 5.2}, {:not_found_strategy => :raise}) }.should raise_error(ArgumentError)
    end

    it 'should leave variable intact if value not found (default behaivour)' do
      str = 'my var1=%{var1} and var2 is %<var2>d'
      StringInterpolation.interpolate(str, {}).should == 'my var1=%{var1} and var2 is %<var2>d'
    end

    it 'should hide variable if variable value not found and strategy is :hide' do
      str = 'my var1=%{var1} and var2 is %<var2>d.'
      StringInterpolation.interpolate(str, {}, {:not_found_strategy => :hide}).should == 'my var1= and var2 is .'
    end
  end

end
