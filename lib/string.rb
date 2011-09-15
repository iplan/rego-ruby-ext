class String

  # returns a hash like params containing all the "get" params from a given url
  # Ex:
  #   'http://wiki.rego.co.il/doku.php?id=development:horizon3:plugins:core_extensions:start&do=edit&rev='.to_params
  #   => {:id=>'development:horizon3:plugins:core_extensions:start', :do=>'edit', :rev=>nil}
  def to_params
    hash = {}
    params=self.split("?")
    if params.size > 1
      params=params[1].split("&")
      params=params.collect{|param| param.split("=")}
      params.each do |param|
        hash[param[0].to_sym]=param[1]
      end
    end
    hash
  end

  # converts string to either TrueClass or FalseClass. If converion can't be made, returns nil
  def to_boolean
    s = self.downcase.strip
    if s == 'true'
      TrueClass
    elsif s == 'false'
      FalseClass
    else
      nil
    end
  end

  # matches and replaces placeholders in form of %{foo} or %<foo>
  def interpolate(values_hash = {}, options = {})
    StringInterpolation.interpolate(self, values_hash, options)
  end

end
