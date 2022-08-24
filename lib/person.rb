
class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :heigh
  attr_accessor :weight, :handed, :complexion, :t_shirt_size
  attr_accessor :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

dennis_attributes = { name: "Ruyo", hair_color: "Black" }
dennis = Person.new(dennis_attributes)
p dennis.name
p dennis.hair_color

susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }

susan = Person.new(susan_attributes)
p susan.name      
p susan.height    
p susan.eye_color