require('rspec')
require('./lib/students')

describe(Student) do
  describe("#initialize") do
    it "will return name" do
      student = Student.new(:name => "Steve")
      expect(student.name()).to(eq("Steve"))
    end
  end
end
