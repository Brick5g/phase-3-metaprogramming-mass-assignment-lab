class Person
  def initialize(attributes = {})
    attributes.each do |name, value|
      self.class.attr_accessor(name) unless self.class.method_defined?(name)
      public_send("#{name}=", value)
    end
  end
end
