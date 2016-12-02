require('rspec')
require('./lib/teachers')

describe(Teacher) do
  before :each do
    Teacher.clear
  end

  describe('#initialize') do
    it "will return name" do
      teacher = Teacher.new({:name => "John"})
      expect(teacher.name()).to(eq("John"))
    end

    it "will return id" do
      teacher = Teacher.new({:name => "John"})
      expect(teacher.id()).to(eq(1))
    end
  end

  describe('#add') do
    it "will add teacher to array @@teachers" do
      teacher = Teacher.new({:name => "John"})
      expect(teacher.add()).to(eq([teacher]))
    end
  end

  describe('.clear') do
    it "will remove all teachers" do
      teacher = Teacher.new({:name => "John"})
      teacher.add()
      expect(Teacher.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it "will show all teachers" do
      teacher = Teacher.new({:name => "John"})
      teacher.add()
      teacher2 = Teacher.new({:name => "Kevin"})
      teacher2.add()
      expect(Teacher.all()).to(eq([teacher, teacher2]))
    end
  end
end
