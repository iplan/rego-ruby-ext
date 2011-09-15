#hash that true.is_a?(Boolean) and false.is_a?(Boolean) would work
module Boolean
end

class TrueClass
  include Boolean
end

class FalseClass
  include Boolean
end
