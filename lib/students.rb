class Student
  attr_reader(:name, :id)

  def initialize(attributes)
    @name = attributes[:name]
  end
end
