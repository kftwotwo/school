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

  define_singleton_method(:find) do |id|
    found = nil
    @@students.each do |student|
      if student.id() == id
        found = student
      end
    end
    found
  end
end
