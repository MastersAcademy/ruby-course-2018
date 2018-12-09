require 'pry'
require './config/initializers/database'

worker = User.new(first_name: ' Homer ', last_name: 'Simpson')
p worker

profession = Work.new(profession: 'Safety inspector')
p profession

department = Employer.new(department: 'Department of Labor Protection')
p department