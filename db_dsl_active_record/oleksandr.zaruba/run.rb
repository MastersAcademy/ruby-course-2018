require 'pry'
require './config/initializers/database'

Work.create(profession: 'Texas Ranger')
work_id = Work.last.id

Employer.create(department: 'Texas PD')
employer_id = Employer.first.id

unit = User.create(first_name: 'Chuck', last_name: 'Norris', work_id: work_id, employer_id: employer_id)
p unit
p unit.work
p unit.employer.department 

p Work.last.users
p Employer.last.users
