require('rspec')
require('./lib/students')

describe(Student) do
  describe("#initialize") do
    it "will return name" do
      student = Student.new(:name => "Steve")
      expect(student.name()).to(eq("Steve"))
    end
    it "will return id" do
      student = Student.new(:name => "Steve")
      expect(student.id()).to(eq(1))
    end
  end

  describe("#add") do
    it "will add student to array" do
      student = Student.new(:name => "Steve")
      expect(student.add()).to(eq([student]))
    end
  end
end
