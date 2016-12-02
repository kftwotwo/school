class Teacher
  attr_reader(:name, :id)

  @@teachers = []

  def initialize(attributes)
    @name = attributes[:name]
    @id = @@teachers.length + 1
  end
end
