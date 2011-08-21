module Enumerable

  # Add dynamic attribute-based selectors.
  # Ex:
  #   [{:name=>'Guy',:last_name=>'Shmuely'},
  #    {:name=>'Jack',:last_name=>'Sperow'}].find_by_name_and_last_name('Guy','Shmuely')
  #   => [{:name=>'Guy',:last_name=>'Shmuely'}]
  #   [{:name=>'Guy',:last_name=>'Shmuely',:age=>25},
  #    {:name=>'Jack',:last_name=>'Sperow'},
  #    {:name=>'Roobin'}].collect_name_and_last_name
  #   => [['Guy','Shmuely'],['Jack','Sperow'],['Roobin',nil]]
  def method_missing(method_id, *arguments)
    if match = /collect_([_a-zA-Z]\w*)/.match(method_id.to_s)
      attributes = match.captures.last.split('_and_')
      collection = self.collect{|array| attributes.collect{|attr| (array.is_a?(Array) || array.is_a?(Hash)) ? array[attr.to_sym] : array.send(attr.to_sym)}}
      collection.flatten! if attributes.size == 1
      collection
    elsif match = /select_by_([_a-zA-Z]\w*)/.match(method_id.to_s)
      attribute_names = match.captures.last.split('_and_')
      select do |element|
        flag=true
        attribute_names.each_with_index { |name, idx| value=(element.is_a?(Array) || element.is_a?(Hash)) ? element[name.to_sym] : element.send(name)
                                          flag=false unless value==arguments[idx] }
        flag
      end
    else
      super
    end
  end

end
