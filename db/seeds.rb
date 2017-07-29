# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'Ida Broms', email: 'ida@capturedesign.pro', password: '1234', password_confirmation:'1234', admin: true) unless User.find_by(email: 'ida@capturedesign.pro')
User.create(name: 'Daniel Costa', email: 'costa@vixinet.ch', password: '39248204', password_confirmation:'39248204', admin: true) unless User.find_by(email: 'costa@vixinet.ch')