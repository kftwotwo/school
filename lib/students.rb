class Student
  attr_reader(:name, :id)
  @@students = []

  def initialize(attributes)
    @name = attributes[:name]
    @id = @@students.length + 1
  end
end
