# Adds several instance methods to NilClass.
class NilClass
  # Ex: nil.empty? => true
  def empty?; true; end
  def blank?; true; end

  def any?; false; end
  def include?(*args); false; end

  def strip; nil; end
  def truncate; nil; end

  #DO NOT override to_sym this since it breaks globalize
  #def to_sym; ""; end
end
