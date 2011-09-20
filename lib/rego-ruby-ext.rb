['nil-ext', 'boolean-ext', 'date-ext', 'time-ext', 'enumerable-ext', 'hash-ext', 'numeric-ext', 'symbol-ext', 'string-interpolation', 'string-ext'].each do |file_name|
  require File.join(File.dirname(__FILE__), file_name)
end

