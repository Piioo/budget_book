# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless User.find_by(email: 'admin@foo.de')
  user_data = {
    firstname:             'admin',
    lastname:              'root',
    email:                 'admin@foo.de',
    password:              'demo',
    password_confirmation: 'demo',
  }
  User.create(user_data)
end

unless Kind.count > 0
  Kind.create({ name: 'Lebensmittel' })
  Kind.create({ name: 'Wohnung' })
  Kind.create({ name: 'Gehalt' })
  Kind.create({ name: 'Auto' })
end
