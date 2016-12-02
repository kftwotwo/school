require('sinatra')
require('./lib/teachers')
require('./lib/students')

get('/') do
  erb(:index)
end

get("/teachers/new") do
  erb(:new_teacher)
end

get('/teachers') do
  @teachers = Teacher.all()
  erb(:teachers)
end

post('/teachers') do
  teacher = Teacher.new(:name => params[:name])
  teacher.add()
  erb(:success)
end
