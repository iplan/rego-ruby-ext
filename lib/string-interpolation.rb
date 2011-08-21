# heavily based on Masao Mutoh's gettext String interpolation extension
# http://github.com/mutoh/gettext/blob/f6566738b981fe0952548c421042ad1e0cdfb31e/lib/gettext/core_ext/string.rb

module StringInterpolation
  INTERPOLATION_PATTERN = Regexp.union(
    /%%/,
    /%\{(\w+)\}/, # matches placeholders like "%{foo}"
    /%<(\w+)>(.*?\d*\.?\d*[bBdiouxXeEfgGcps])/ # matches placeholders like "%<foo>.d"
  )

  # define module methods (static methods, equivalent of writing def self.interpolate ... end)
  class << self

    # Replace variables (defined in sprintf syntax) in given <i>string</i> with values from <i>variables</i> hash.
    #
    # If variable value is not found there are 3 possible strategies (configurable via <i>:value_not_found</i> in third <i>options</i> argument):
    # * :raise - raise argument error
    # * :ignore - ignore the variable in string (leave as is, do not replace) (DEFAULT)
    # * :hide - replace the variable in string with empty string
    def interpolate(string, values, options = {})
      options[:not_found_strategy] ||= :ignore
      raise ArgumentError.new('Interpolation values must be a Hash.') unless values.kind_of?(Hash)
      interpolate_hash(string, values, options)
    end

    def interpolate_hash(string, values, options)
      string.gsub(INTERPOLATION_PATTERN) do |match|
        if match == '%%'
          '%'
        else
          key = ($1 || $2).to_sym
          if values.key?(key)
            value = values[key]
            value = value.call(values) if value.respond_to?(:call)
            $3 ? sprintf("%#{$3}", value) : value
          else
            if options[:not_found_strategy] == :raise
              raise ArgumentError.new("missing interpolation argument #{key} in #{string.inspect}. Given values are: (#{values.inspect})")
            elsif options[:not_found_strategy] == :hide
              value = ''
            else
              value = $&
            end
          end
        end
      end
    end

  end
end
