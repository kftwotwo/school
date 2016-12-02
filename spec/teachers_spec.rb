require('rspec')
require('./lib/teachers')

describe(Teacher) do
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
end
