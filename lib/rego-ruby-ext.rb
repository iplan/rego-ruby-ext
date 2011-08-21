['nil', 'date', 'time', 'enumerable', 'numeric', 'symbol', 'string-interpolation', 'string'].each do |file_name|
  require File.join(File.dirname(__FILE__), file_name)
end

