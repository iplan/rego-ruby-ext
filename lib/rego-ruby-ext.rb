['nil', 'date', 'time', 'enumerable', 'hash', 'numeric', 'symbol', 'string-interpolation', 'string'].each do |file_name|
  require File.join(File.dirname(__FILE__), file_name)
end

