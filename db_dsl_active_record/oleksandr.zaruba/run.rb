require 'pry'
require './config/initializers/database'

User.create!(first_name: ' Homer ', last_name: 'Simpson' )
puts User.last.full_name

Work.create!(profession: 'Safety inspector')
puts Work.last.user_profession

Employer.create!(department: 'Department of Labor Protection')
puts Employer.last.user_department