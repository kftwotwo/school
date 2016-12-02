class Teacher
  attr_reader(:name, :id)

  @@teachers = []

  def initialize(attributes)
    @name = attributes[:name]
    @id = @@teachers.length + 1
  end

  def add
    @@teachers.push(self)
  end

  define_singleton_method(:clear) do
    @@teachers = []
  end

  define_singleton_method(:all) do
    @@teachers
  end

  define_singleton_method(:find) do |id|
    found = nil
     @@teachers.each do |teacher|
       if teacher.id() == id
         found = teacher
       end
     end
     found
  end

end
