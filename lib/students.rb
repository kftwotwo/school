class Student
  attr_reader(:name, :id)
  @@students = []

  def initialize(attributes)
    @name = attributes[:name]
    @id = @@students.length + 1
  end

  def add
    @@students.push(self)
  end

  define_singleton_method(:all) do
    @@students
  end

  define_singleton_method(:clear) do
    @@students = []
  end
end
