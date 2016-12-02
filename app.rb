require('sinatra')
require('./lib/teachers')
require('./lib/students')

get('/') do
  erb(:index)
end

get("/teachers/new") do
  erb(:new_teacher)
end
