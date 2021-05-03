# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = Time.now.to_f * rand(0.001)

User.create(email: 'alextriam@gmail.com', password: "#{password}", password_confirmation: "#{password}" , is_admin: true)

levels = ['junior', 'middle', 'senior']

levels.each do |level|
  Level.find_or_create_by(level: level)
end
