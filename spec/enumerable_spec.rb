require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Enumerable do
  describe "#find_by_" do
    before :each do
      @full_names = [
        {:name=>'Yosi', :last_name=>'Posi'},
        {:name=>'Guy', :last_name=>'Shmuely'},
        {:name=>'Jack', :last_name=>'Sparrow'}
      ]
    end

    it 'should find one result' do
      result = @full_names.select_by_name_and_last_name('Guy','Shmuely')

      result.size.should == 1
      result.first.should == @full_names[1]
    end

    it 'should not find any results' do
      @full_names.select_by_name('asdf').should be_empty
      [].select_by_name('asdf').should be_empty
    end
  end
  
  describe "#collect_" do
    before :each do
      @full_names = [
        {:name=>'Yosi', :last_name=>'Posi'},
        {:name=>'Guy', :last_name=>'Shmuely'},
        {:name=>'Jack', :last_name=>'Sparrow'}
      ]
    end
    
    it 'should collect names' do
      first_names = @full_names.collect_name

      first_names.size.should == 3
      first_names.should include('Yosi', 'Guy', 'Jack')
      first_names.should_not include('Baruh')
    end

    it 'should collect last_names' do
      last_names = @full_names.collect_last_name

      last_names.size.should == 3
      last_names.should include('Posi', 'Sparrow', 'Shmuely')
      last_names.should_not include('Guy')
    end
  end  
end
