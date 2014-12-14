# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cbs = Group.create!(description: 'CBS')
cfans    = Group.create!(description: 'CFANS')
csom = Group.create!(description: 'CSOM')
cla    = Group.create!(description: 'CLA')

john        = User.create!(first_name: 'John',    last_name: 'Norman', email: 'jgnorman@umn.edu')
max         = User.create!(first_name: 'Max',     last_name: 'Fierke', email: 'max@maxfierke.com')
allison     = User.create!(first_name: 'Allison', last_name: 'Link',  email: 'alilink86@gmail.com')
michael     = User.create!(first_name: 'Michael', last_name: 'Sayhun', email: 'mc06@sahyun.com')
adam        = User.create!(first_name: 'Adam',    last_name: 'Moen',   email: 'moenx200@umn.edu')

Joining.create!(user: john,    group: cla)
Joining.create!(user: john,     group: cfans)
Joining.create!(user: max,     group: csom)
Joining.create!(user: allison, group: cla)
Joining.create!(user: michael, group: cbs)
Joining.create!(user: adam,    group: cbs)

Activity.create!(user: john, description: 'went to yoga')

Activity.create!(user: max, description: 'Do homework')
Activity.create!(user: max, description: 'take notes')

Activity.create!(user: allison, description: 'study')
Activity.create!(user: allison, description: 'run 5k')

Impact.create!(user: allison, description: 'felt better')
Impact.create!(user: allison, description: 'better test score')